# Custom Devcontainer for codespaces ⚡

`custom-codespace` consists of files you can use to decrease your workload. It consists of multiple files depending on usage by user and can be used to install extensions, run some scripts , install some database etc.

## Implementation 📒
Just put the `.devcontainer` folder in the root of your project. From there when creating the codespace , github will show it in the drop-down.
Currently there are two files in the `.devcontainer` .

   - devcontainer.json -> Can be used to install some extensions / open some ports / run some scripts after installation etc
   - devcontainer-pyMongo.json -> Includes the above features with installation  of mongoDB database
       - Includes `pyMongo.dockerfile` needed to install mongoDB.
       
       To use this file rename it to `devcontainer.json`
       
       The build time is of 2-3 minutes. May vary sometimes. 
       
       Once this is done, you will have the necesssary stuff installed with mongoDB as the database.

       To start the database you need to use command `sudo service mongodb start` and then you can use `mongosh` to use commands for mongoDB.

### Extensions Included 🍪
  ```
    "ms-python.python",
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
- [x] Separate some stuff depending on usage
- [ ] Maybe cookiecutter version of this?
- [ ] Make the same for different database

#### PRs?
Help me in making this better 😊. Create a issue before creating a PR/ Contact me on discord Mini#5183

#### Credits
- [Microsoft Docs On Installing MongoDB in WSL](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-database#install-mongodb)
- [Official MongoDB Installation Docs](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/)
- [This Dev.to article](https://dev.to/n3wt0n/make-it-perfect-how-to-customize-github-codespaces-2ma4)
