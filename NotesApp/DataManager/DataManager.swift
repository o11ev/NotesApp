//
//  DataManager.swift
//  NotesApp
//
//  Created by o11ev on 20.02.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()

    var notes: [Note] = [
        Note(title: "How I spent my summer holidays",
             text: "Summer is my favorite time of the year. Summer holidays are the longest. This year I spent my summer holidays in the country. Most of the time I walked, cycled, spent time with my friends. When the weather was hot, we went to the river. In the evenings, I helped my mother water the beds in the garden. I liked my summer holidays very much.",
             date: "02-09-2020"),
        Note(title: "Winter is the nicest season",
             text: "In winter I can have a very good time. I can enjoy skating, skiing, playing snowballs and sledging. Winter is the time for fun! In winter it snows much. Forests and fields are white with snow. They look wonderfull in winter! Snow sparkles in the sun. Frost paints on the windows and there are many icicles hanging from the roofs. I think winter is a beautiful season!",
             date: "15-12-2020"),
        Note(title: "Birthday diary",
             text: "Birthday is such a special day in the life of anyone, the day when your parents, your mother gave you your life. But not all people look forward it with impatient. Some people hate their birthdays, because they think that they are getting older. Not only their face and body change, but also tastes, preferences. They can not wear some clothes, change their style. Little by little society wants them to take things seriously, that is why young people afraid of the responsibility. But there is another side of the coin, person obtains knowledge, gets mature, wiser and experienced. For most of the young people it means that their parents will give them more freedom! So, in spite of the fact that the process of growing older is natural and you can not avoid it, I can only advice you to take it easy, to enjoy every second of your life, the presence of your friends and family who come to support and cheer you.",
             date: "20-12-2020"),
        Note(title: "Some thoughts about learning",
             text: "Have you ever considered learning foreign languages? If not, why not? Learning a foreign language can provide you with the days of pleasure; all you need is your wish, free time, and a little creativity. My introduction to this foreign language was in 2008. I started to learn French when I was the 4-th year student; by that moment I have been learning English for 8 years, and German for 4 years, so you see that foreign languages have always been a passion of mine. A practically enjoyable aspect of the process of learning is realizing the fact that you can do this, you can read some foreign words, you can answer some questions, and you can discuss something. At the beginning topics for discussion will be simple but important for everyday conversations. One major problem that I had to overcome, making the first steps in learning French, was speaking French and comprehension of authentic dialogues. If you face this problem, don`t really lay it to heart, you simply need to put in a lot of practice. The more practice you have, the better - I did so and once realized I can make up dialogues and catch the ideas from video. Just don`t give up, I do agree that it might be challenging but you can achieve the goal you set. I become fascinated by French, when I began to learn it. This language is a passion, love and a magnificent melody for me; moreover I enjoy speaking French not less than speaking English. Thanks to English, I could start getting on with French because one foreign language (in my case - English) helps a lot. Nowadays there is no difficulty with a great variety of books, mp3 or whatever. You may search for the information on the web-sites - a lot of textbooks, tests, films, songs are available there - authentic material is important in the process of learning the foreign language you choose. If you need expert help and more training you can contact the centre of foreign languages in your city and enroll into the course of any language you are interested in. At the centre a full information will be given to you, concerning your request and there you will get a help of a qualified specialist.",
             date: "11-01-2021"),
        Note(title: "Waiting for summer",
             text: "The bright sunshine warms the Earth. When the heat is oppressive, it is a treat to get out of town and have a walk in the woods. The fields are green. In summer nature surrounds us with all kinds of flowers: merry dandelions, beautiful roses, shy daisies. Sometimes the weather becomes very hot in summer and the air gets stuffy. Then a thunderstorm usually brings relief. The sky is suddenly covered with dark clouds and distant rolls of thunder are heard. Later bright flashes of lightning are followed by claps of thunder and it begins to rain. After the thunderstorm the air is remarkably fresh, and very often we can see a beautiful bridge across the sky which is called a rainbow. Children love summer very much because in summer they have long holidays. They don’t have to go to school and that’s why they have much free time. They can play with their friends in the yard, read or watch TV. So, summer is the best time of the year.",
             date: "20-02-2021"),
    ]
    
    private init () {}
}
