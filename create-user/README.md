# create-user

This role creates a user on a remote host.

## vars

- `add_ssh`: Add the user's public key to the remote host. Default is `false`.
- `is_sudo`: Add the user to the sudo group. Default is `false`.
- `username`: The username of the user to create. Default is `max`.
- `user_password`: The password of the user to create. **Required**
