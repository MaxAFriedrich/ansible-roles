# git-clone

This role clones a git repository to a specified directory. And creates the directory if it does not exist.

## vars

- `repo`: The git repository to clone. **Required**
- `dest`: The directory to clone the repository to. Default is `/docker`.
- `branch`: The branch of the repository to clone. Default is `main`.
