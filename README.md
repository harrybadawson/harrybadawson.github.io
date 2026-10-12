# harrybadawson.github.io

Personal academic site. Plain HTML and CSS — no build step, no dependencies.

## Files

| File | What it is |
|---|---|
| `about-me.html` | About me. This is the real home page. |
| `index.html` | A small redirect to `about-me.html`. GitHub Pages serves this at the bare domain, so it has to stay. |
| `research.html` | Research — HRD figure, the three-paper series |
| `teaching.html` | Teaching and supervision |
| `contact.html` | Contact |
| `style.css` | All styling for every page |
| `assets/harry-dawson-cv.pdf` | CV (copy of `~/phd/CV/harry-dawson-cv/main.pdf`) |
| `assets/harry-dawson.jpg` | Portrait, cropped to 5:4 |
| `assets/gaia-hrd.png` | Gaia HRD from the ESO research plan |

## Iterating safely

Work happens on the `draft` branch. `main` is what GitHub Pages publishes, so
nothing goes live until you merge.

```bash
./preview.sh
```

Open <http://localhost:4173>. Served from this machine only — nobody else can see it.
Edit, save, refresh.

When a round of changes looks right, publish:

```bash
git checkout main && git merge draft && git push && git checkout draft
```

That merges your reviewed work into `main`, pushes it live, and drops you back on
`draft` to keep working.

## Updating the CV

The PDF in `assets/` is a copy, not a link — rebuild your CV, then:

```bash
cp ~/phd/CV/harry-dawson-cv/main.pdf ~/harrybadawson.github.io/assets/harry-dawson-cv.pdf
```

## Editing notes

- The nav appears in all four HTML files. Renaming or adding a tab means editing each one.
- The current tab is marked `class="tabs__link is-current"` plus `aria-current="page"`.
- Colours, fonts and spacing are defined once at the top of `style.css` under `:root`.
- `--ground` is the colour behind the page; `--paper` is the sheet itself.
- Images need `height: auto` or the `width`/`height` attributes override `aspect-ratio`.
