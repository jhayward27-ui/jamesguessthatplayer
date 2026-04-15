# jamesguessthatplayer

The computer picks an athlete from the four major North American sports (NBA, NFL, MLB, NHL). You ask yes/no questions, use **Deduce** mode, or type a name to guess. Try to name the player in **under 25 questions** to win.

## Run the game

- Open `index.html` in your browser (double-click or drag into a tab), or serve the folder with any static server.
- Optional: enable **GitHub Pages** on this repo and use the site URL to play online.

## Files

- `index.html` — main guessing game (single HTML file, no build step).
- `existential-snake.html` — separate mini-game (Existential Snake: The Slab).
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
