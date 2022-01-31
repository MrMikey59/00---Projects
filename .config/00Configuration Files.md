# Configuration (Dot) Files

Configuration files automate the setup of GitHub, Git, VS Code and it's Extensions.

Many programs are configured using plain-text files known as _dotfiles_
(because the file names begin with a `.`, e.g. `~/.vimrc`, so that they are
hidden in the directory listing `ls` by default).

Shells are one example of programs configured with such files. On startup, your shell will read many files to load its configuration.
Depending on the shell, whether you are starting a login and/or interactive the entire process can be quite complex.
[Here](https://blog.flowblok.id.au/2013-02/shell-startup-scripts.html) is an excellent resource on the topic.

For `bash`, editing your `.bashrc` or `.bash_profile` will work in most systems.
Here you can include commands that you want to run on startup, like the alias we just described or modifications to your `PATH` environment variable.
In fact, many programs will ask you to include a line like `export PATH="$PATH:/path/to/program/bin"` in your shell configuration file so their binaries can be found.

Some other examples of tools that can be configured through dotfiles are:

- `bash` - `~/.bashrc`, `~/.bash_profile`
- `git` - `~/.gitconfig`
- `vim` - `~/.vimrc` and the `~/.vim` folder
- `ssh` - `~/.ssh/config`
- `tmux` - `~/.tmux.conf`

How should you organize your dotfiles? They should be in their own folder,
under version control, and **symlinked** into place using a script. This has
the benefits of:

- **Easy installation**: if you log in to a new machine, applying your
customizations will only take a minute.
- **Portability**: your tools will work the same way everywhere.
- **Synchronization**: you can update your dotfiles anywhere and keep them all
in sync.
- **Change tracking**: you're probably going to be maintaining your dotfiles
for your entire programming career, and version history is nice to have for
long-lived projects.

What should you put in your dotfiles?
You can learn about your tool's settings by reading online documentation or
[man pages](https://en.wikipedia.org/wiki/Man_page). Another great way is to
search the internet for blog posts about specific programs, where authors will
tell you about their preferred customizations. Yet another way to learn about
customizations is to look through other people's dotfiles: you can find tons of
[dotfiles
repositories](https://github.com/search?o=desc&q=dotfiles&s=stars&type=Repositories)
on Github --- see the most popular one
[here](https://github.com/mathiasbynens/dotfiles) (we advise you not to blindly
copy configurations though).
[Here](https://dotfiles.github.io/) is another good resource on the topic.

All of the class instructors have their dotfiles publicly accessible on GitHub:  
-  [Anish](https://github.com/anishathalye/dotfiles),  
-  [Jon](https://github.com/jonhoo/configs),  
-  [Jose](https://github.com/jjgo/dotfiles).  

Let's get you up to speed with dotfiles.  
1. Create a folder for your dotfiles and set up version
   control.  
2. Add a configuration for at least one program, e.g. your shell, with some
   customization (to start off, it can be something as simple as customizing your shell prompt by setting `$PS1`).  
3. Set up a method to install your dotfiles quickly (and without manual effort) on a new machine. This can be as simple as a shell script that calls `ln -s` for each file, or you could use a [specialized
   utility](https://dotfiles.github.io/utilities/).  
4. Test your installation script on a fresh virtual machine.  
5. Migrate all of your current tool configurations to your dotfiles repository.  
6. Publish your dotfiles on GitHub.  

## Supported Configuration Files
| Config File | Description | Like gitignore |  
| --- | --- | :---: |  
| .editorconfig | Diverse editor config (for various TEs & IDEs) |   |  
| .eslintignore | Ignored files for eslint linting & checks | Y |  
| .githubattributes |  |  |  
| .gitignore | Specifies any files/folders to NOT commit onto GitHub | Y |  
| .package.json | Project-wide metadata (Workspaces & Project-wide packages) <br> the manifest file in which you declare your extension and command. The sample plugin registers a command and defines its title and command name. With this information VS Code can show the command in the command palette. It doesn’t yet need to load the plugin. |  |  
| .prettierignore | Ignored files for prettier | Y |  
| .prettierrc.json | Prettier config for code formatting |   |  
| .vscodeignore  | [VS Code Ignore](https://code.visualstudio.com/docs/tools/vscecli#_advance-usage) | Y |  
| .eslintignore  | [ESLint Ignore](https://eslint.org/docs/user-guide/configuring#ignoring-files-and-directories) | Y |  
| .stylelintignore |  [Style Lint Ignore](https://stylelint.io/user-guide/configuration#stylelintignore) | Y |  
| .markdownlintignore |  [Markdown Ignore](https://github.com/igorshubovych/markdownlint-cli) | Y |  
| README.md | Project README (About) |  |  
| .vscode/extensions.json | Lists which [Visual Studio Code](https://code.visualstudio.com/) extensions are recommended to use with this project. |  |  
| .vscode/settings.json | Defines some basic configuration for [Visual Studio Code](https://code.visualstudio.com/). <br> Use this file to modify user's settings in VS Code |  |  

