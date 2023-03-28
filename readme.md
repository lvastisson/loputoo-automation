# Automaatne deployment

## Eelnevalt vajalik

(kui aega hiljem yle voib virtuaalmasinate loomise ka automatiseerida, kuigi selle automatiseerimise reaalne eesmark eelkoige paris masinate peal deploymine)

- Tootavad masinad
- Workstation masinas genereeritud ssh key

## Skriptide jooksutamine

1. Installida workstation masinas ansible `install-ansible.sh`
2. Laadida mällu git ssh key `load-git-key.sh`
2. Seadistada root SSH target masinatesse `ansible-playbook enable-root-access.yml -kK`
3. Seadistada chat applikatsiooni backend `ansible-playbook setup-entire-backend.yml`

Ansible commandite ette voib lisada `ANSIBLE_GATHERING=explicit`, et saasta pisut aega jattes vahele "Gathering facts" taskid