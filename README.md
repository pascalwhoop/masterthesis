# Thesis Repository
I keep my thesis in here. I wrote a bit of NodeJS stuff (used to be my scripting language, I know, terrible choice) that watches files and reexectutes the build scripts. Really all that is needed though is LaTeX, optimally the full pack. All dependencies are in `src/head.tex`. 

If you want to use the node stuff, run `npm install -g concurrently && npm install` in the root folder and then `npm start`. This should build everything, if LaTeX `latexmk` is installed and available in the PATH of your OS
