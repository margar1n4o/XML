function createXMLDocument() {
    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, 'tv_programs', null);

    let tvPrograms = doc.documentElement;

    let tvProgram = doc.createElement('tv_program');
    tvPrograms.appendChild(tvProgram);

    let show1 = createShow(doc, 'Игра на тронове', 'Фентъзи, Драма', 'Политически и династични борби в Седемте кралства на Вестерос.');
    
    let episode1 = createEpisode(doc, '1', '2011-04-17');
    createActor(doc, episode1, 'Емилия Кларк', 'Дейенерис Таргариен');
    createActor(doc, episode1, 'Кит Харингтън', 'Джон Сноу');
    createActor(doc, episode1, 'Питър Динклейдж', 'Тирион Ланистър');
    show1.appendChild(episode1);

    let episode2 = createEpisode(doc, '2', '2011-04-24');
    createActor(doc, episode2, 'Лина Хийди', 'Серсеи Ланистър');
    createActor(doc, episode2, 'Николай Костер-Валдау', 'Джейме Ланистър');
    createActor(doc, episode2, 'Шон Бийн', 'Едард Старк');
    show1.appendChild(episode2);

    let episode3 = createEpisode(doc, '3', '2011-05-01');
    createActor(doc, episode3, 'Мейси Уилямс', 'Аря Старк');
    createActor(doc, episode3, 'Софи Търнър', 'Санса Старк');
    show1.appendChild(episode3);

    tvProgram.appendChild(show1);

    return doc;
}


function createShow(doc, title, genre, description) {
    let show = doc.createElement('show');

    let titleElement = doc.createElement('title');
    titleElement.textContent = title;
    show.appendChild(titleElement);

    let genreElement = doc.createElement('genre');
    genreElement.textContent = genre;
    show.appendChild(genreElement);

    let descriptionElement = doc.createElement('description');
    descriptionElement.textContent = description;
    show.appendChild(descriptionElement);

    return show;
}

function createEpisode(doc, episodeNumber, airDate) {
    let episode = doc.createElement('episode');

    let episodeNumberElement = doc.createElement('episode_number');
    episodeNumberElement.textContent = episodeNumber;
    episode.appendChild(episodeNumberElement);

    let airDateElement = doc.createElement('air_date');
    airDateElement.textContent = airDate;
    episode.appendChild(airDateElement);

    let actors = doc.createElement('actors');
    episode.appendChild(actors);

    return episode;
}

function createActor(doc, parent, name, role) {
    let actor = doc.createElement('actor');

    let nameElement = doc.createElement('name');
    nameElement.textContent = name;
    actor.appendChild(nameElement);

    let roleElement = doc.createElement('role');
    roleElement.textContent = role;
    actor.appendChild(roleElement);

    parent.querySelector('actors').appendChild(actor);
}

let xmlDocument = createXMLDocument();
let xmlString = new XMLSerializer().serializeToString(xmlDocument);
console.log(xmlString);
