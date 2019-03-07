# Aion UofT Hackathon

Cheatsheet website and markdown for the UofT Aion Hackathon.

## Contributions

Suggest changes in `markdown.md`, then once things are merged into master, [aionuoft.ca](http://aionuoft.ca) will auto update. It's like magic, but not really.

## Files

- `build.sh` converts `cheatsheet.md` into HTML and throw it into `index.html`.
- `cheatsheet.md` is the markdown itself. To edit the content of the webpage, make changes in here and then merge into master. Netlify will notice the change, pull everything in, and then run the build script to convert the markdown to HTML merge everything together.
- `index.html` is where the HTML and CSS sits. All the CSS has been minified and pasted into the top of the file.