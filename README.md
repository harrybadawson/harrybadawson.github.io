# harrydawson.github.io

Personal academic site. Plain HTML and CSS — no build step, no dependencies.

## Files

| File | What it is |
|---|---|
| `index.html` | About me (the landing page) |
| `research.html` | Research |
| `teaching.html` | Teaching & outreach |
| `contact.html` | Contact |
| `style.css` | All styling for every page |
| `assets/Harry_Dawson_CV.pdf` | CV — **replace the placeholder with your real one** |
| `.nojekyll` | Tells GitHub Pages to serve the files as-is |

## Preview locally before publishing

```bash
./preview.sh
```

Then open <http://localhost:4173>. This serves from your own machine only —
nothing is visible to anyone else. Edit a file, save, refresh the browser.

Stop it with Ctrl+C.

## Publish

```bash
git add -A && git commit -m "Update site" && git push
```

Live within about a minute at <https://harrydawson.github.io>.

## Editing notes

- Every placeholder is wrapped in `[square brackets]` — search for `[` to find them all.
- The nav appears in all four HTML files. If you rename or add a tab, update it in each one.
- The current tab is marked with `class="tabs__link is-current"` and `aria-current="page"`.
- Colours and fonts are defined once at the top of `style.css` under `:root`.
