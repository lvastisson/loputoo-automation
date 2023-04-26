# Automaatne deployment

## Eelnevalt vajalik

(kui aega hiljem yle voib virtuaalmasinate loomise ka automatiseerida, kuigi selle automatiseerimise reaalne eesmark eelkoige paris masinate peal deploymine)

- Töötavad masinad (sobivad ka virtuaalmasinad)
- Workstation masinas genereeritud ssh key
- Juhul kui rakenduse Git repositoorium on privaatne, siis kausta 'workstation' vaja kopeerida vastav ssh võti ning laadida see 'load-git-key.sh' skriptiga

## Skriptide jooksutamine

1. Installida workstation masinas ansible `./install-ansible.sh`
2. (vajadusel) Laadida mällu git ssh key `. ./load-git-key.sh` NB! nagu näidatud tuleb skript source'da (ehk . ette panna), mitte jooksutada skriptina
3. Seadistada root SSH target masinatesse `ansible-playbook enable-root-access.yml -kK`
4. Seadistada chat applikatsiooni backend `ansible-playbook setup-entire-backend.yml`
5. Seadistada monitooringu server `ansible-playbook setup-entire-monitoring-server.yml`

Ansible commandite ette võib lisada `ANSIBLE_GATHERING=explicit`, et säästa pisut aega jättes vahele "Gathering facts" taskid
