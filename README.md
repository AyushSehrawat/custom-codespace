# Custom Devcontainer for codespaces ⚡

Custom container for github codespaces consists of installing some extensions like python, themes, live server etc to save time. 

Also includes installation of mongodb.

## Implementation 📒
Just put the `.devcontainer` folder in the root of your project. From there when creating the codespace , github will show it in the drop-down.
The build time is of 2-3 minutes. May vary sometimes ^_+ . 
Once this is done, you will have the necesssary stuff installed with mongoDB as the database.

To start the database you need to use command `sudo service mongodb start` and then you can use `mongosh` to create/delete the db and etc.

### Extensions Included 🍪
  ```
    "ms-python.python",
    "wakatime.vscode-wakatime",
    "akamud.vscode-theme-onedark",
    "github.copilot",
    "codezombiech.gitignore",
    "ms-toolsai.jupyter",
    "ms-toolsai.jupyter-keymap",
    "ms-toolsai.jupyter-renderers",
    "ritwickdey.liveserver"
  ```
  
#### Future Goals 🌟 : 
- [x] Implementation to install latest mongodb version ( currently causes error and have to start and keep it open )
- [ ] Maybe cookiecutter version of this?

#### PRs?
Help me in making this better 😊. Create a issue before creating a PR/ Contact me on discord Mini#5183
