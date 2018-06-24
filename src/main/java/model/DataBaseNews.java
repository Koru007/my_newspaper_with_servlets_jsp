package model;

import java.util.Date;
import java.util.Scanner;

public class DataBaseNews {

    private static final String TITLE0 = "Rick and Morty creator Justin Roiland announces 70 new episodes";
    private static final String TITLE1 = "The Poorest Rich Kids in the World";
    private static final String TITLE2 = "How Do You Rebuild Your Life After Leaving A Polygamous Sect?";
    private static final String TITLE3 = "How to Hire Fake Friends and Family";
    private static final String TITLE4 = "INTO THE VALLEY OF DEATH";

    private static final String CONTENT0 = "Rick and Morty creator Justin Roiland has confirmed that he's making 70 more episodes of the Adult Swim series.\nRoiland - the co-creator and voice actor of the show - tweeted the news of a fourth season on Thursday.\nAlongside the tweet was a drawing that said, \"May 10, 2018. Rick and Morty. 70 more episodes.\"Earlier this year, Rick and Morty writer Ryan Ridley revealed the series hadn't begun production, which would indicate the show would likely not come out in 2018 or even 2018. \n" + "\n" + "Ridley further said the scripts for Rick and Morty's third season were completed in November 2016 and premiered eight months later on Adult Swim.\n" + "\n" + "He told Hypebeast: \"They really take their time. I never understood why everybody - all parties, Dan, Justin, and Adult Swim - didn’t get their shit together, and make the show fast. I just don’t get it. It doesn’t make any sense to me.\"\n" + "\n" + "\"I’m sure they all have their reasons,\" Ridley continued. \"I know how long this show takes to write, let alone animate. I’d be surprised if there was a fourth season on the air anytime sooner than 2019… late 2019. Get your s*** together, you guys. Get it all together, and put it in a backpack.\"";
    private static final String CONTENT1 = "A decade ago, members of the FLDS — a fundamentalist sect of the Mormon church that practices polygamy — began leaving of their own volition. Today, they’re returning home to rewrite the dark narrative that’s formed around them.\n At 62 years old, Coylyn Pipkin is still a teenager. Women who’ve left the Fundamentalist Church of Jesus Christ of Latter-day Saints, or FLDS, often think of themselves in this way. They joke that their development, especially when it comes to emotional intelligence, stopped when they were young. When they leave the FLDS, they go through the same phases that every kid does: teenage rebellion, twenties exploration, thirties confidence. Coylyn left the FLDS in 2015, and has only recently started wearing her long gray hair without the elaborate front wave — a mix of ‘90s bangs and something vaguely 19th century — taught to all women in the church as children.\n" + "\n" + "When I met Coylyn, she was dressed for the third annual Girlfriends Day Out, a celebration for ex-FLDS women hosted by the Creekers Foundation — part of a larger movement of ex-FLDS members working to wrest their narrative away from the church its members have left behind. She wasn’t wearing heels, like some of the younger women, or a tightly fitted dress. It hadn’t been that long since her wardrobe was entirely composed of the long, puffed-sleeve dresses that outsiders called “prairie” and those in the community called “polyg” (pronounced \"plig”). When her husband teased her on the way out the door, mumbling, “Oh, you feminist women,” she ignored him.";
    private static final String CONTENT2 = "The black Chevy Tahoe picked up speed as it careened down the curving Wyoming mountain road, the two frightened children inside clutching their seats, certain that they wouldn't make it alive to the school bus at the bottom of the hill. It was only 7:30 in the morning, but their stepmother at the wheel already had liquor on her breath. The kids had seen her this way before; two years earlier they'd been in the car when she was pulled over for a DUI. This morning, she seemed even more wasted.\n" + "\n" + "\"Slow down! Please! Please!\" 12-year-old Georgia begged from the passenger seat. In the back, her twin brother, Patterson, sat frozen in horror.\n" + "\n" + "\"Shut the fuck up!\" their stepmother, Daralee Inman, snarled. Her right hand shot out to smack Georgia's face, while her left clutched a glass filled with Trix cereal, leaving no hands on the steering wheel. Pine trees whizzed by to their right, a cliff to their left. \"Did I ever get you into a motherfucking wreck?\" Daralee demanded, as faster and faster they descended the steep road that served as the family's half-mile-long driveway. \"Did I ever get you into a motherfucking wreck?\"";
    private static final String CONTENT3 = "In Japan, you can pay an actor to impersonate your relative, spouse, coworker, or any kind of acquaintance.\n Money may not be able to buy love, but here in Japan, it can certainly buy the appearance of love—and appearance, as the dapper Ishii Yuichi insists, is everything. As a man whose business involves becoming other people, Yuichi would know. The handsome and charming 36-year-old is on call to be your best friend, your husband, your father, or even a mourner at your funeral.\n" + "\n" + "His 8-year-old company, Family Romance, provides professional actors to fill any role in the personal lives of clients. With a burgeoning staff of 800 or so actors, ranging from infants to the elderly, the organization prides itself on being able to provide a surrogate for almost any conceivable situation.\n" + "\n" + "Yuichi believes that Family Romance helps people cope with unbearable absences or perceived deficiencies in their lives. In an increasingly isolated and entitled society, the CEO predicts the exponential growth of his business and others like it, as à la carte human interaction becomes the new norm.\n" + "\n" + "I sat down recently with Yuichi in a café on the outskirts of Tokyo, to discuss his business and what it means to be, in the words of his company motto, “more than real.”";
    private static final String CONTENT4 = "A strategic passage wanted by the Taliban and al-Qaeda, Afghanistan’s Korengal Valley is among the deadliest pieces of terrain in the world for U.S. forces. One platoon is considered the tip of the American spear. Its men spend their days in a surreal combination of backbreaking labor—building outposts on rocky ridges—and deadly firefights, while they try to avoid the mistakes the Russians made. Sebastian Junger and photographer Tim Hetherington join the platoon’s painfully slow advance, as its soldiers laugh, swear, and run for cover, never knowing which of them won’t make it home.";

    private static final String IMG0 = "/public/img/rick1.jpg";
    private static final String IMG1 = "/public/img/rick_morty.jpg";
    private static final String IMG2 = "/public/img/rick.jpg";
    private static final String IMG3 = "/public/img/rick2.jpg";
    private static final String IMG4 = "/public/img/rickNew.jpg";

    public static void setArticles(Article[] articles) {
        DataBaseNews.articles = articles;
    }

    public static Article addingNewArticle(String title, String content, String imgUrl) {
        return new Article(8, new Date(), title, content, imgUrl);

    }

    private static Article[] articles = new Article[]{
            new Article(0, new Date(), TITLE0, CONTENT0, IMG0),
            new Article(1, new Date(), TITLE1, CONTENT1, IMG1),
            new Article(2, new Date(), TITLE2, CONTENT2, IMG2),
            new Article(3, new Date(), TITLE3, CONTENT3, IMG3),
            new Article(4, new Date(), TITLE4, CONTENT4, IMG4),
    };
    //media screen end


    public static Article[] getAllArticles() {
        return articles;
    }


}
