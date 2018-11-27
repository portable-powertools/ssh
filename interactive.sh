PATH_add "$mod_ssh_root/util.bin.d"
ssh() {
    local config="$mod_ssh_root/unmanaged/config"
    refresh_sshconfig || config=''
    if [[ ! $config ]]; then
        /usr/bin/env ssh "$@"
    else
        /usr/bin/env ssh -F "$config" "$@"
    fi
}
