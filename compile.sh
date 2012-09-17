URL_BASE="http://rsdy.github.com"
TIMESTAMP='%FT%TZ'

alias pandoc_web="pandoc -f markdown -t html5 --template=template/template.html"
alias pandoc_xml="pandoc -f markdown -t html5 --template=template/atom-item.xml"

generate_article() {
	markdown_link="[$(head -n1 $1 |cut -d' ' -f2-)]($URL_BASE/$target) ($3)"

	sed -i "s/^% date/% $3/" $1
	sed -i "/^-\+\$/ a\\ * $markdown_link" README.md

	pandoc_web -V article -o "$2" "$1"
	git add "$2" "$1"
}

generate_feed_entry() {
	pandoc_xml -V root="$URL_BASE" -V filename="$3" -V timestamp="$4" -o "$2" "$1"
	git add "$2" "$1"
}

for i in markdown/*.md; do
	mod_date="$(stat -c %y $i)"
	bname="$(basename "$i" .md)"
	html="posts/$bname.html"
	feed="feed/$bname.xml"

	[[ -f $html ]] || generate_article "$i" "$html" "$(date +'%d %B %Y' -d"$mod_date")"
	[[ -f $feed ]] || generate_feed_entry "$i" "$feed" "$html" "$(date +"$TIMESTAMP" -d"$mod_date")"
done

sed "s/\\\$timestamp\\\$/$(date -u +"$TIMESTAMP")/" template/atom.xml >atom.xml
ls -t feed/ |sed 's;^;feed/;' |head -n10 |xargs cat >>atom.xml
echo "</feed>" >>atom.xml

pandoc_web -o index.html README.md
git add README.md index.html atom.xml
