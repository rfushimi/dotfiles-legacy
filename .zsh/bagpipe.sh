# # bagpipe
# # https://g3doc.corp.google.com/devtools/piper/g3doc/public/bagpipe.md?cl=head#tip-no-vpn-mac

# # Bagpipe setup
# # export BAGPIPEBOX=wildstar.tok.corp.google.com  # Workstation
# # export BAGPIPEBOX=shinobu.c.googlers.com  # Cloudtop-Taiwan
# # export BAGPIPEBOX=wildstar.tok.corp.google.com  # Cloudtop-US East
# # export BAGPIPEBOX=kiriya.c.googlers.com
# export BAGPIPEBOX=sayegusa.tok.corp.google.com  # Workstation
# export AUTH_HOST=$BAGPIPEBOX

# # VPN/corp version
# # . $HOME/.bagpipe/setup.sh $HOME/.bagpipe $BAGPIPEBOX

# # BeyondCorp
# # . $HOME/.bagpipe/setup.sh $HOME/.bagpipe $BAGPIPEBOX "corp-ssh-helper --stderrthreshold=INFO %h %p"

# # CloudTop
# # . $HOME/.bagpipe/setup.sh $HOME/.bagpipe $BAGPIPEBOX "corp-ssh-helper -relay=sup-ssh-relay.corp.google.com --stderrthreshold=INFO %h %p"

# function renew_gcert_ifneeded() {
#   HOURS_TILL_EOB=$((20 - $(date +%-H)))h
#   gcertstatus -ssh_cert_comment=corp/normal -check_remaining=$HOURS_TILL_EOB || gcert
# }

# function renew_bagpipe_ifneeded() {
#   p4 info > /dev/null 2>&1 || p4 bagpipe-prodaccess
# }

# function prodaccess() {
#   renew_gcert_ifneeded && renew_bagpipe_ifneeded
# }

if [[ -a ~/.zsh/hosts/$HOST ]]; then
    source ~/.zsh/hosts/$HOST
else
    source ~/.zsh/hosts/default
fi