# jamesguessthatplayer

The computer picks an athlete from the four major North American sports (NBA, NFL, MLB, NHL). You ask yes/no questions, use **Deduce** mode, or type a name to guess. Try to name the player in **under 25 questions** to win.

## Run the game

- Open `index.html` in your browser (double-click or drag into a tab), or serve the folder with any static server.
- **Online (GitHub Pages):** [Play the game](https://jhayward27-ui.github.io/jamesguessthatplayer/) · [Project slideshow](https://jhayward27-ui.github.io/jamesguessthatplayer/presentation.html)

## Files

- `index.html` — main guessing game (single HTML file, no build step).
- `presentation.html` — project slideshow for demos and class presentations.
- `publish.sh` — one-command script to commit and push to this repo.
- `quick-publish.sh` — no-argument publish script with timestamp message.

## Publish updates reliably

From the project folder, run:

`./publish.sh "Your commit message"`

Or use the fastest option (auto commit message):

`./quick-publish.sh`

What it does each time:

- verifies you are in this repo and on `main`
- verifies `origin` is `jhayward27-ui/jamesguessthatplayer`
- stages all changes
- creates a commit
- pushes to `origin/main`

## License

See [LICENSE](LICENSE).
