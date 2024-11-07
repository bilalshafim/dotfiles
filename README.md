nvim submodule:
If you clone your dotfiles repository in the future, remember to initialize and update submodules (nvim) with:
$ git submodule update --init --recursive

When you make changes to your Neovim configuration and want to update the submodule reference in your dotfiles repo, use:
$ cd nvim  # Navigate to the nvim submodule
$ git add .
$ git commit -m "Update Neovim configuration"
$ git push origin main  # Push changes to the Neovim repo
$ cd ..  # Go back to the dotfiles directory
$ git add nvim  # Stage the updated submodule reference
$ git commit -m "Update submodule reference for nvim"
$ git push origin main  # Push changes to the dotfiles repo

To pull updates from the Neovim repository into your dotfiles repo, run:
$ git submodule update --remote nvim
