URL_BASE="http://rsdy.github.com"

alias pandoc="pandoc -f markdown -t html5 --template=template/template.html"
for i in markdown/*.md; do
	target="posts/$(basename "$i" .md)".html

	[[ -f $target ]] || {
		mod_date="$(stat -c %y $i |cut -d' '  -f1 |xargs date +'%d %B %Y' -d)"
		markdown_link="[$(head -n1 $i |cut -d' ' -f2-)]($URL_BASE/$target) ($mod_date)"
		sed -i "s/^% date/% $mod_date/" $i
		sed -i "/^-\+\$/ a\\ * $markdown_link" README.md
		pandoc -V article -o "$target" "$i"

		git add "$target" "$i"
	}
done
pandoc -o index.html README.md
git add README.md index.html
