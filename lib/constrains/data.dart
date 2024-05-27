class Word {
  final int id;
  final String word;
  final String meaning;
  final String sentence;

  Word(this.id, this.word, this.meaning, this.sentence);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'word': word,
      'meaning': meaning,
      'sentence': sentence,
    };
  }

  factory Word.fromMap(Map<String, dynamic> map, String id) {
    return Word(
      map['id'],
      map['word'],
      map['meaning'] ?? '',
      map['sentence'] ?? '',
    );
  }
}
List<Word> wordsList = [

  Word(
    1,
    'Parenting',
    'the act of raising a child.',
    'Parenting can be both challenging and rewarding.',
  ),

// 70. Passion
  Word(
    1,
    'Passion',
    'a strong feeling of enthusiasm or excitement for something.',
    'She has a passion for music and plays the violin beautifully.',
  ),

  Word(
    1,
    'Sharp',
    'mentally quick and alert.',
    'She is a sharp student and always gets good grades.',
  ),

// 72. Average
  Word(
    1,
    'Average',
    'typical or normal.',
    'The average temperature in July is 80 degrees Fahrenheit.',
  ),

// 73. Rejection
  Word(
    1,
    'Rejection',
    'the act of refusing to accept or grant something.',
    'She was disappointed by the rejection of her job application.',
  ),

// 74. Compare
  Word(
    1,
    'Compare',
    'to examine or consider things in order to determine their similarities and differences.',
    'We compared the features of the two different laptops before making a purchase.',
  ),

// 75. Audience
  Word(
    1,
    'Audience',
    'the people who are watching or listening to something.',
    'The comedian had a large audience that laughed at his jokes.',
  ),

// 76. Stream
  Word(
    1,
    'Stream',
    'a continuous flow of water or another fluid.',
    'The river flows over a series of beautiful waterfalls and streams.',
  ),
  Word(
    1,
    'Stream',
    'to transmit a continuous flow of data.',
    'We can stream movies and TV shows online.',
  ),

// 77. Access
  Word(
    1,
    'Access',
    'the right or ability to use or enter something.',
    'She was denied access to the restricted area.',
  ),

// 78. Download
  Word(
    1,
    'Download',
    'to transfer a file from a computer system to a user\'s device.',
    'I downloaded the software from the company\'s website.',
  ),

// 79. Panic
  Word(
    1,
    'Panic',
    'sudden fear that overwhelms someone and prevents them from thinking clearly.',
    'There was panic in the streets when the fire alarm went off.',
  ),

// 80. Discussion
  Word(
    1,
    'Discussion',
    'a conversation or debate in which people express their views on a particular subject.',
    'We had a lively discussion about the upcoming election.',
  ),
// Existing words ( 1,repeated for consistency)

  Word(
    1,
    'Administration',
    'the act or process of managing the affairs of a country, organization, or institution.',
    'The administration is responsible for developing and implementing policies.',
  ),

  Word(
    1,
    'Priority',
    'something given special importance or urgency.',
    'Completing this project is a top priority.',
  ),
  Word(
    1,
    'Approval',
    'the act of sanctioning or consenting to something.',
    'We need approval from the manager before we can proceed.',
  ),
  Word(
    1,
    'Commitment',
    'a pledge or promise to do or achieve something.',
    'The company is committed to providing excellent customer service.',
  ),
  Word(
    1,
    'Campaign',
    'a series of planned activities with a particular purpose in mind, especially to publicize or promote something.',
    'The marketing team launched a social media campaign to promote the new product.',
  ),
// 82. Realize
  Word(
    1,
    'Realize',
    'to achieve or succeed in achieving something you want or aim for.',
    'She finally realized her dream of opening her own bakery.',
  ),

// 83. Extension
  Word(
    1,
    'Extension',
    'the act of extending something or the state of being extended.',
    'I need a phone extension cord to reach the outlet.',
  ),
  Word(
    1,
    'Extension',
    'an additional part added to something already existing.',
    'The museum is planning an extension to house its new collection of artifacts.',
  ),

// 84. Founder
  Word(
    1,
    'Founder',
    'the person who starts an organization or company.',
    'Bill Gates is one of the founders of Microsoft.',
  ),

// 85. Vision
  Word(
    1,
    'Vision',
    'the ability to think about or plan the future with imagination or wisdom.',
    'The company leader has a clear vision for the future of the organization.',
  ),

// 86. Generation
  Word(
    1,
    'Generation',
    'all the people born and living at about the same time.',
    'The younger generation is very tech-savvy.',
  ),

// 87. Comment
  Word(
    1,
    'Comment',
    'a statement expressing an opinion or remark.',
    'She left a comment on the blog post.',
  ),

// 88. Wrap-up
  Word(
    1,
    'Wrap-up',
    'a summary or conclusion of something.',
    'Let\'s do a quick wrap-up of the meeting before we adjourn.',
  ),

// 89. Terminal
  Word(
    1,
    'Terminal',
    'the end point of a system or process.',
    'The bus station is the terminal for all departing buses.',
  ),
  Word(
    1,
    'Terminal',
    'an electronic device with a screen and keyboard used for entering data into a computer.',
    'She used the airport terminal to check in for her flight.',
  ),

// 90. Traditional
  Word(
    1,
    'Traditional',
    'of or relating to tradition or the past.',
    'A traditional wedding ceremony often includes a white dress and a veil.',
  ),

// 91. Revenue
  Word(
    1,
    'Revenue',
    'the income generated by a business from the sale of its goods or services.',
    'The company\'s revenue has increased significantly this year.',
  ),

// 92. Purchase
  Word(
    1,
    'Purchase',
    'to buy something.',
    'I purchased a new laptop yesterday.',
  ),

// 93. Rehabilitation
  Word(
    1,
    'Rehabilitation',
    'the process of restoring someone to health or to their former ability to live normally.',
    'The physical therapy program helped him with his rehabilitation after the accident.',
  ),

// 94. Inauguration
  Word(
    1,
    'Inauguration',
    'the formal ceremony at which a new president or other official is sworn into office.',
    'The presidential inauguration is a major national event.',
  ),

  Word(
      1,
      'Goal',
      'A point scored by putting the ball into the opponent\'s net.',
      'The striker scored a brilliant goal in the final minute of the match.'),
  Word(
      1,
      'Penalty',
      'A kick awarded to a team following a foul committed by the opposing team inside their penalty area.',
      'The referee awarded a penalty after the defender tripped the forward inside the box.'),
  Word(
      1,
      'Corner',
      'A kick taken from the corner flag by the attacking team after the ball has gone out of play over the goal line.',
      'The team won a corner kick after the defender cleared the ball behind the goal line.'),
  Word(
      1,
      'Offside',
      'A player is in an offside position if they are nearer to the opponent\'s goal line than both the ball and the second-last opponent when the ball is played to them.',
      'The assistant referee raised the flag for offside as the striker received the pass.'),
  Word(
      1,
      'Foul',
      'An illegal act committed by a player, typically involving unfair contact with an opponent.',
      'The referee blew the whistle for a foul after the defender tripped the midfielder.'),
  Word(
      1,
      'Yellow card',
      'A caution issued by the referee to a player for a serious or persistent foul.',
      'The midfielder received a yellow card for a reckless tackle.'),
  Word(
      1,
      'Red card',
      'An expulsion from the match issued by the referee to a player for a serious foul or misconduct.',
      'The striker was shown a red card for violent conduct.'),
  Word(
      1,
      'Free kick',
      'A kick awarded to a team following a foul committed by the opposing team.',
      'The team was awarded a free kick just outside the penalty area.'),
  Word(
      1,
      'Throw-in',
      'A method of restarting play after the ball has gone out of play over the touchline.',
      'The defender took a quick throw-in to start a counterattack.'),
  Word(1, 'Header', 'A method of playing the ball using the head.',
      'The striker scored a goal with a powerful header.'),
  Word(
      1,
      'Tackle',
      'An attempt by a player to take the ball away from an opponent.',
      'The defender executed a perfectly timed tackle to dispossess the attacker.'),
  Word(
      1,
      'Dribble',
      'The act of moving the ball forward while maintaining control with one\'s feet.',
      'The winger demonstrated excellent dribbling skills as he weaved past defenders.'),
  Word(1, 'Pass', 'The act of kicking the ball to a teammate.',
      'The midfielder played a precise pass through the defense.'),
  Word(1, 'Cross', 'A pass played into the penalty area from the wings.',
      'The winger delivered a perfect cross into the box.'),
  Word(
      1,
      'Save',
      'An act of preventing the ball from entering the goal by the goalkeeper.',
      'The goalkeeper made a diving save to deny the striker\'s shot.'),
  Word(
      1,
      'Shot',
      'An attempt to score a goal by kicking the ball towards the opponent\'s goal.',
      'The forward unleashed a powerful shot from outside the penalty area.'),
  Word(
      1,
      'Goalkeeper',
      'A player positioned in front of the goal whose main job is to prevent the opposing team from scoring.',
      'The goalkeeper made a crucial save to keep his team in the lead.'),
  Word(
      1,
      'Defender',
      'A player tasked with preventing the opposing team from scoring.',
      'The defender intercepted a pass to thwart the attacking move.'),
  Word(
      1,
      'Midfielder',
      'A player positioned in the middle of the field who is involved in both attacking and defending.',
      'The midfielder controlled the pace of the game with his precise passes.'),
  Word(
      1,
      'Forward',
      'A player positioned near the opponent\'s goal whose primary responsibility is to score goals.',
      'The forward scored a hat-trick in the match.'),
  Word(
      1,
      'Substitution',
      'The act of replacing one player with another during a match.',
      'The coach made a tactical substitution to freshen up the team.'),
  Word(
      1,
      'Referee',
      'An official responsible for enforcing the rules of the game and maintaining order.',
      'The referee blew the final whistle to end the match.'),
  Word(
      1,
      'Assistant referee',
      'An official who assists the referee in making decisions, especially regarding offside and out-of-bounds calls.',
      'The assistant referee raised the flag to signal an offside infringement.'),
  Word(
      1,
      'Captain',
      'A player designated as the leader of the team who represents them on the field.',
      'The captain rallied his teammates after conceding a goal.'),
  Word(1, 'Match', 'A competitive fixture between two teams.',
      'The match ended in a draw after both teams scored equal goals.'),
  Word(1, 'Pitch', 'The playing area where the match takes place.',
      'The pitch was in pristine condition despite the heavy rainfall.'),
  Word(
      1,
      'Stadium',
      'A large structure where matches are held, typically equipped with seating for spectators.',
      'Thousands of fans packed into the stadium to support their team.'),
  Word(
      1,
      'Half-time',
      'The interval between the first and second halves of a match.',
      'The players retreated to the locker room at half-time to discuss tactics.'),
  Word(1, 'Full-time', 'The end of regulation time in a match.',
      'The final whistle blew, signaling full-time and a narrow victory for the home team.'),
  Word(
      1,
      'Extra time',
      'Additional time added to a match to break a tie or determine the winner.',
      'The match went into extra time after both teams were level at the end of regulation.'),
  Word(
      1,
      'Injury time',
      'Additional time added to a half or a match due to stoppages for injuries or other delays.',
      'The referee announced four minutes of injury time at the end of the second half.'),

  Word(
      1,
      'Head',
      'The uppermost part of the human body, containing the brain, face, and sense organs.',
      'The head is supported by the neck and houses the central nervous system.'),
  Word(
      1,
      'Hair',
      'A thread-like protein filament that grows from the scalp and other body parts.',
      'Hair can vary in color, texture, and thickness.'),
  Word(
      1,
      'Face',
      'The front part of the head, containing the eyes, nose, mouth, and ears.',
      'The face plays a crucial role in facial expressions and communication.'),
  Word(1, 'Eye', 'The organ of sight, located in the sockets of the skull.',
      'Eyes allow us to perceive light and color, enabling vision.'),
  Word(
      1,
      'Ear',
      'The organ of hearing and balance, located on either side of the head.',
      'Ears detect sound waves and help us maintain spatial orientation.'),
  Word(1, 'Nose', 'The organ of smell, located in the center of the face.',
      'The nose also helps filter air entering the respiratory system.'),
  Word(
      1,
      'Mouth',
      'The opening in the face that leads to the oral cavity, pharynx, and esophagus.',
      'The mouth is used for speaking, eating, and drinking.'),
  Word(
      1,
      'Tongue',
      'A muscular organ in the mouth that helps with tasting, swallowing, and speaking.',
      'The tongue has taste receptors that allow us to perceive different flavors.'),
  Word(
      1,
      'Brain',
      'The control center of the nervous system, located in the skull.',
      'The brain is responsible for thought, memory, movement, and other vital functions.'),
  Word(
      1,
      'Skull',
      'The bony structure that encloses the brain and protects it from injury.',
      'The skull also provides support for the facial structures.'),
  Word(
      1,
      'Torso',
      'The central part of the body, extending from the shoulders to the hips.',
      'The torso houses most of the body\'s internal organs.'),
  Word(1, 'Neck', 'The part of the body that connects the head to the torso.',
      'The neck provides support and flexibility for the head.'),
  Word(
      1,
      'Chest',
      'The front part of the torso, containing the ribs, sternum, and lungs.',
      'The chest protects the heart and lungs.'),
  Word(
      1,
      'Back',
      'The rear part of the torso, extending from the neck to the waist.',
      'The back houses the spine and major muscle groups that support posture and movement.'),
  Word(1, 'Shoulder', 'The joint connecting the upper arm to the torso.',
      'Shoulders provide a wide range of motion for the arms.'),
  Word(
      1,
      'Stomach',
      'A muscular sac-like organ in the upper left part of the abdomen, responsible for breaking down food.',
      'The stomach is part of the digestive system.'),
  Word(
      1,
      'Abdomen',
      'The cavity in the lower part of the torso, containing most of the digestive organs.',
      'The abdomen is also protected by the abdominal muscles.'),
  Word(1, 'Heart', 'A muscular organ that pumps blood throughout the body.',
      'The heart is the center of the circulatory system.'),
  Word(
      1,
      'Lungs',
      'A pair of spongy organs in the chest cavity, responsible for gas exchange.',
      'Lungs take in oxygen and release carbon dioxide during respiration.'),
  Word(
      1,
      'Spine',
      'A flexible column of bones running down the back, providing support and structure to the body.',
      'The spine also protects the spinal cord, a bundle of nerves that carries messages between the brain and the rest of the body.'),
  Word(
      1,
      'Leg',
      'The lower limb of the body, extending from the hip to the ankle.',
      'Legs are used for walking, running, and jumping.'),
  Word(
      1,
      'Thigh',
      'The upper part of the leg, extending from the hip to the knee.',
      'The thigh contains some of the largest muscles in the body.'),
  Word(1, 'Knee', 'The joint connecting the thigh to the lower leg.',
      'Knees allow for bending and straightening the legs.'),
  Word(
      1,
      'Calf',
      'The back part of the lower leg, consisting mainly of the calf muscle.',
      'The calf muscle plays a role in plantar flexion, allowing us to push off the ground when walking or running.'),
  Word(1, 'Ankle', 'The joint connecting the lower leg to the foot.',
      'Ankles allow for plantarflexion and dorsiflexion, movements essential for walking and balance.'),
  Word(
      1,
      'Foot',
      'The part of the lower limb that contacts the ground when standing or walking.',
      'Feet are complex structures with bones, muscles, and ligaments that provide support and stability.'),
  Word(1, 'Heel', 'The back part of the foot, where the foot meets the ground.',
      'The heel helps absorb shock during walking and running.'),
  Word(1, 'Toe', 'One of the five digits at the front of the foot.',
      'Toes assist with balance, gripping, and kicking.'),
  Word(1, 'Sole', 'The underside of the foot.',
      'The sole provides cushioning and traction when walking or running.'),
  Word(
      1,
      'Achilles tendon',
      'A strong tendon connecting the calf muscle to the heel bone.',
      'The Achilles tendon is essential for pushing off the ground during movement.'),
  Word(
      1,
      'Internal organ',
      'An organ located within the body cavity and responsible for a specific function.',
      'There are many internal organs, each playing a crucial role in maintaining life.'),
  Word(
      1,
      'Intestine',
      'A long, muscular tube in the digestive system responsible for absorbing nutrients from food.',
      'The intestine is made up of the small intestine and large intestine.'),
  Word(
      1,
      'Liver',
      'The largest organ in the body, located in the upper right abdomen.',
      'The liver plays a vital role in detoxification, metabolism, and protein synthesis.'),
  Word(
      1,
      'Kidneys',
      'A pair of bean-shaped organs located in the lower back on either side of the spine.',
      'Kidneys filter waste products from the blood and maintain fluid balance in the body.'),
  Word(
      1,
      'Pancreas',
      'A gland located behind the stomach that produces digestive enzymes and hormones.',
      'The pancreas plays a key role in digestion and blood sugar regulation.'),
  Word(
      1,
      'Urinary bladder',
      'A muscular sac-like organ in the lower pelvis that stores urine before it is expelled from the body.',
      'The urinary bladder is part of the urinary system.'),
  Word(
      1,
      'Vision',
      'The sense of sight, allowing us to perceive light and color.',
      'Vision is mediated by the eyes and the brain.'),
  Word(
      1,
      'Hearing',
      'The sense of sound, allowing us to perceive vibrations in the air.',
      'Hearing is mediated by the ears and the brain.'),
  Word(
      1,
      'Smell',
      'The sense of olfaction, allowing us to detect odors and fragrances.',
      'Smell is mediated by olfactory receptors in the nose.'),
  Word(
      1,
      'Taste',
      'The sense of gustation, allowing us to perceive different flavors.',
      'Taste is mediated by taste receptors on the tongue.'),
  Word(
      1,
      'Touch',
      'The sense of feeling, allowing us to perceive pressure, temperature, and texture.',
      'Touch is mediated by sensory receptors throughout the skin.'),
  Word(
      1,
      'Balance',
      'The sense of equilibrium, allowing us to maintain our body position and sense of orientation.',
      'Balance is mediated by the inner ear and the vestibular system.'),
  Word(
      1,
      'Proprioception',
      'The sense of body awareness, allowing us to know the position and movement of our body parts.',
      'Proprioception is mediated by sensory receptors in muscles, joints, and tendons.'),
  Word(
      1,
      'Kinesthesia',
      'The sense of movement, allowing us to perceive the motion of our body limbs.',
      'Kinesthesia is closely related to proprioception and helps us coordinate movement.'),
  Word(
      1,
      'Thermoception',
      'The sense of temperature, allowing us to perceive hot and cold sensations.',
      'Thermoception is mediated by sensory receptors in the skin.'),
  Word(
      1,
      'Nociception',
      'The sense of pain, a warning signal of potential tissue damage.',
      'Nociception is mediated by nociceptors throughout the body.'),
  Word(
      1,
      'Mango',
      'a large, oval fruit with yellow or orange skin and a sweet, juicy flesh.',
      'Mangoes are a popular ingredient in smoothies, juices, and desserts.'),
  Word(
      1,
      'Pineapple',
      'a tropical fruit with a spiky yellow exterior and a sweet, tangy flesh.',
      'Pineapples can be eaten fresh, grilled, or juiced.'),
  Word(
      1,
      'Papaya',
      'a pear-shaped fruit with orange skin and a sweet, orange flesh.',
      'Papayas are a good source of vitamin C and papain, an enzyme that aids digestion.'),
  Word(
      1,
      'Guava',
      'a small, round or oval fruit with green or yellow skin and a sweet, tangy flesh.',
      'Guavas can be eaten fresh, juiced, or used to make jams and jellies.'),
  Word(
      1,
      'Kiwifruit',
      'a small, oval fruit with fuzzy brown skin and a bright green flesh with black seeds.',
      'Kiwifruits are a good source of vitamin C and fiber.'),
  Word(
      1,
      'Coconut',
      'a large, brown fruit with a hard outer shell and a white, fleshy interior.',
      'Coconuts can be eaten fresh, dried, or used to make milk and oil.'),
  Word(
      1,
      'Rambutan',
      'a small, round fruit with red, hairy skin and a sweet, slightly acidic flesh.',
      'Rambutans are a popular fruit in Southeast Asia.'),
  Word(
      1,
      'Passionfruit',
      'a round or oval fruit with a purple or yellow rind and a juicy, seedy interior with a tart flavor.',
      'Passionfruit is often used in juices, cocktails, and desserts.'),
  Word(
      1,
      'Mangoesteen',
      'a round fruit with a deep purple rind and a white, segmented flesh with a sweet, slightly acidic flavor.',
      'Mangoesteens are known as the "Queen of Fruits" due to their delicate flavor and rarity.'),
  Word(
      1,
      'Lychee',
      'a small, round fruit with a rough, red skin and a sweet, white flesh with a single seed.',
      'Lychees are a popular fruit in China and Southeast Asia.'),

  Word(
      1,
      'Orange',
      'a round citrus fruit with a bright orange rind and a juicy, segmented interior.',
      'Oranges are a good source of vitamin C.'),
  Word(
      1,
      'Lemon',
      'a yellow citrus fruit with a sour taste and a juicy interior.',
      'Lemons are used in a variety of dishes, from savory to sweet.'),
  Word(
      1,
      'Lime',
      'a small, green citrus fruit with a sour taste and a juicy interior.',
      'Limes are often used in Mexican and Southeast Asian cuisine.'),
  Word(
      1,
      'Grapefruit',
      'a large, citrus fruit with a thick, yellow rind and a tart, tangy flesh.',
      'Grapefruits are a good source of vitamin C and can be eaten fresh or juiced.'),
  Word(
      1,
      'Tangerine',
      'a small, orange citrus fruit with a loose, tangerine-colored rind and a sweet, juicy flesh.',
      'Tangerines are similar to oranges but are smaller and sweeter.'),
  Word(
      1,
      'Clementine',
      'a seedless citrus fruit, similar to a tangerine but with a smoother rind and a sweeter flavor.',
      'Clementines are a popular winter fruit.'),
  Word(
      1,
      'Pomelo',
      'a large, citrus fruit with a thick, green or yellow rind and a pale pink or yellow flesh.',
      'Pomelos are less common than other citrus fruits but have a sweet, slightly tart flavor.'),
  Word(
      1,
      'Yuzu',
      'a small, Japanese citrus fruit with a bumpy, yellow rind and a sour, aromatic flavor.',
      'Yuzu is used in Japanese cuisine for its unique flavor.'),
  Word(1, 'Strawberry', 'a small, red fruit with a sweet, juicy flavor.',
      'Strawberries are a popular ingredient in desserts and salads.'),
  Word(
      1,
      'Blueberry',
      'a small, blue fruit with a sweet, slightly tart flavor.',
      'Blueberries are a good source of antioxidants.'),
  Word(1, 'Raspberry', 'a small, red fruit with a sweet, tart flavor.',
      'Raspberries are often used in jams, jellies, and desserts.'),
  Word(
      1,
      'Blackberry',
      'a small, dark purple or black fruit with a sweet, tart flavor.',
      'Blackberries can be eaten fresh, baked in pies, or made into jams.'),
  Word(1, 'Cranberry', 'a small, red fruit with a tart, acidic flavor.',
      'Cranberries are often used in juices, sauces, and holiday dishes.'),
  Word(
      1,
      'Goji berry',
      'a small, bright red berry with a sweet, slightly tart flavor.',
      'Goji berries are a popular superfood and are often dried.'),
  Word(1, 'Acai berry', 'a small, purple berry with a tart flavor.',
      'Acai berries are often used in smoothies and bowls.'),
  Word(1, 'Elderberry', 'a small, black or blue berry with a tart flavor.',
      'Elderberries are often used in jams, jellies, and syrups.'),
  Word(
      1,
      'Huckleberry',
      'a small, blue or black berry with a sweet, tart flavor.',
      'Huckleberries are a popular fruit in North America.'),
  Word(1, 'Lingonberry', 'a small, red berry with a tart, acidic flavor.',
      'Lingonberries are often used in jams, jellies, and sauces in Scandinavia.'),
  Word(
      1,
      'Peach',
      'a soft, round fruit with a fuzzy skin and a sweet, juicy flesh.',
      'Peaches can be eaten fresh, canned, or dried.'),
  Word(
      1,
      'Nectarine',
      'a smooth-skinned variety of peach with a similar flavor.',
      'Nectarines are a good alternative to peaches for people who don\'t like fuzzy skin.'),
  Word(
      1,
      'Plum',
      'a round or oval fruit with a smooth skin and a sweet or tart flesh.',
      'Plums can be eaten fresh, dried, or used to make jams and jellies.'),
  Word(
      1,
      'Apricot',
      'a small, orange fruit with a smooth skin and a sweet, juicy flesh.',
      'Apricots can be eaten fresh, dried, or used to make jams and pies.'),
  Word(
      1,
      'Cherry',
      'a small, round fruit with a red or black skin and a sweet or tart flesh.',
      'Cherries can be eaten fresh, frozen, canned, or dried.'),
  Word(
      1,
      'Persimmon',
      'a round or oval fruit with a smooth or rough skin and a sweet or astringent flesh.',
      'Persimmons can be eaten fresh, dried, or used to make pudding.'),
  Word(1, 'Medlar', 'a small, brown fruit with a sweet, jelly-like flesh.',
      'Medlars are a less common fruit, native to Europe and Western Asia.'),
  Word(
      1,
      'Loquat',
      'a small, yellow or orange fruit with a fuzzy skin and a sweet, tangy flesh.',
      'Loquats are a popular fruit in Southeast Asia.'),
  Word(
      1,
      'Apple',
      'a round fruit with a crisp flesh and a sweet or tart flavor.',
      'Apples are a good source of fiber and vitamin C.'),
  Word(
      1,
      'Pear',
      'a bell-shaped fruit with a smooth skin and a sweet, juicy flesh.',
      'Pears can be eaten fresh, canned, or juiced.'),
  Word(
      1,
      'Pomegranate',
      'a round fruit with a tough, red skin and a juicy interior with numerous seeds.',
      'Pomegranates are a good source of antioxidants and vitamins.'),
  Word(
      1,
      'Quince',
      'a pear-shaped fruit with a yellow skin and a tart, astringent flesh.',
      'Quinces are not typically eaten raw but are used in jams, jellies, and stews.'),
  Word(
      1,
      'Nashi pear',
      'a type of Asian pear with a crisp, juicy flesh and a crisp, edible skin.',
      'Nashi pears are sweeter and less tart than regular pears.'),
  Word(
      1,
      'Juneberry',
      'a small, red or purple fruit with a sweet, tart flavor.',
      'Juneberries are a popular fruit in North America and can be eaten fresh or dried.'),
  Word(
      1,
      'Serviceberry',
      'a small, purple or black fruit with a sweet, tart flavor.',
      'Serviceberries are similar to juneberries and can be used in jams, jellies, and pies.'),
  Word(1, 'Beetroot', 'a dark red root vegetable with a sweet, earthy flavor.',
      'Beetroot can be roasted, boiled, or pickled.'),
  Word(
      1,
      'Carrot',
      'a bright orange root vegetable with a sweet, slightly earthy flavor.',
      'Carrots are a good source of vitamin A.'),
  Word(
      1,
      'Turnip',
      'a white or purple root vegetable with a mild, slightly sweet flavor.',
      'Turnips can be mashed, roasted, or added to soups.'),
  Word(
      1,
      'Radish',
      'a small, round or oblong root vegetable with a spicy flavor.',
      'Radishes are often eaten raw with salads or dips.'),
  Word(1, 'Parsnip', 'a white root vegetable with a sweet, nutty flavor.',
      'Parsnips are similar to carrots but have a slightly sweeter taste.'),
  Word(
      1,
      'Rutabaga/Swede',
      'a large, yellow or purple root vegetable with a strong, cabbage-like flavor.',
      'Rutabagas can be roasted, mashed, or boiled.'),
  Word(1, 'Celeriac', 'a type of celery with a bulbous, knobby root.',
      'Celeriac can be roasted, mashed, or used in soups and stews.'),
  Word(
      1,
      'Horseradish',
      'a white root vegetable with a very strong, pungent flavor.',
      'Horseradish is most commonly used as a grated condiment.'),
  Word(
      1,
      'Potato',
      'a starchy, underground tuber that is a staple food in many cultures.',
      'Potatoes can be roasted, mashed, fried, or boiled.'),
  Word(
      1,
      'Sweet potato',
      'a starchy, orange or purple root vegetable with a sweeter flavor than regular potatoes.',
      'Sweet potatoes can be roasted, mashed, or baked.'),
  Word(1, 'Spinach', 'a leafy green vegetable with a mild flavor.',
      'Spinach is a good source of iron and vitamins.'),
  Word(
      1,
      'Kale',
      'a leafy green vegetable with a tough, slightly bitter flavor.',
      'Kale is a good source of vitamins and antioxidants.'),
  Word(
      1,
      'Lettuce',
      'a leafy green vegetable with a mild flavor, commonly used in salads.',
      'There are many different varieties of lettuce, such as romaine and iceberg.'),
  Word(
      1,
      'Swiss chard',
      'a leafy green vegetable with large, green leaves and white or red stalks.',
      'Swiss chard can be sauted, boiled, or steamed.'),
  Word(
      1,
      'Cabbage',
      'a leafy green or purple vegetable with a round head of tightly packed leaves.',
      'Cabbage can be used in salads, stir-fries, and soups.'),
  Word(1, 'Arugula', 'a peppery green with a slightly bitter flavor.',
      'Arugula is often used in salads and on pizzas.'),
  Word(
      1,
      'Collard greens',
      'a leafy green vegetable with large, dark green leaves.',
      'Collard greens are a popular side dish in Southern cuisine.'),
  Word(1, 'Mustard greens', 'a leafy green vegetable with a spicy flavor.',
      'Mustard greens are often used in Asian cuisine.'),
  Word(
      1,
      'Bok choy',
      'a leafy green vegetable with a mild, slightly sweet flavor.',
      'Bok choy is a popular ingredient in stir-fries.'),
  Word(1, 'Watercress', 'a peppery green vegetable that grows in water.',
      'Watercress is a good source of vitamin C.'),
  Word(
      1,
      'Broccoli',
      'a green vegetable with a small green flowerhead and thick green stalks.',
      'Broccoli is a good source of vitamin C and fiber.'),
// 1. Boost
  Word(
    1,
    'Boost',
    'to increase something significantly or quickly.',
    'You can boost your energy levels with a healthy breakfast.',
  ),

// 2. Buffet
  Word(
    1,
    'Buffet',
    'a meal with a variety of dishes from which people serve themselves.',
    'The hotel offered a breakfast buffet with a wide selection of options.',
  ),

// 3. Witness
  Word(
    1,
    'Witness',
    'a person who sees something happen.',
    'The police are interviewing witnesses to the crime.',
  ),

// 4. Friendship
  Word(
    1,
    'Friendship',
    'a close relationship between two people who care about each other.',
    'Friendship is an important part of a happy life.',
  ),

// 5. Vaccine
  Word(
    1,
    'Vaccine',
    'a biological preparation that protects the body from a specific infectious disease.',
    'Getting vaccinated is one of the best ways to prevent disease.',
  ),

// 6. Bold
  Word(
    1,
    'Bold',
    'not shy or afraid; confident and daring.',
    'She made a bold decision to quit her job and travel the world.',
  ),

// 7. Aristocrat
  Word(
    1,
    'Aristocrat',
    'a member of the highest social class, especially one with inherited wealth and titles.',
    'The British royal family are aristocrats.',
  ),

// 8. Protest ( 1,both noun and verb)
  Word(
    1,
    'Protest',
    'a public expression of objection or disapproval.',
    'People gathered in the streets to protest the government\'s policies.',
  ),
  Word(
    1,
    'Protest',
    'to express public objection or disapproval.',
    'The activists are protesting for environmental change.',
  ),

// 9. Sanitizer
  Word(
    1,
    'Sanitizer',
    'a substance that kills germs or bacteria.',
    'It is important to use hand sanitizer to prevent the spread of germs.',
  ),

// 10. License
  Word(
    1,
    'License',
    'an official permission to do something.',
    'You need a driver\'s license to operate a motor vehicle.',
  ),

// 11. Quality
  Word(
    1,
    'Quality',
    'the standard of something as measured against other things of a similar kind.',
    'This product is of high quality.',
  ),

// 12. Marketing
  Word(
    1,
    'Marketing',
    'the activity of promoting and selling products or services.',
    'Marketing is essential for any successful business.',
  ),

// 13. Buyer
  Word(
    1,
    'Buyer',
    'a person who buys something.',
    'The seller offered a discount to attract more buyers.',
  ),

// 14. Deal
  Word(
    1,
    'Deal',
    'an agreement between two or more people or parties.',
    'We struck a deal on the price of the house.',
  ),

// 15. Decision
  Word(
    1,
    'Decision',
    'a choice made by someone after considering different possibilities.',
    'It was a difficult decision, but I chose to accept the job offer.',
  ),

// 16. Search ( 1,both noun and verb)
  Word(
    1,
    'Search',
    'to look for something carefully.',
    'I searched the internet for information on climate change.',
  ),
  Word(
    1,
    'Search',
    'an act of looking for something.',
    'The police conducted a search of the building.',
  ),

// 17. Research ( 1,both noun and verb)
  Word(
    1,
    'Research',
    'to study something carefully in order to discover new information or reach a conclusion.',
    'Scientists are conducting research to develop a cure for cancer.',
  ),
  Word(
    1,
    'Research',
    'the systematic investigation into and study of materials and sources in order to establish facts and reach new conclusions.',
    'My research paper focused on the history of artificial intelligence.',
  ),

// 18. Method
  Word(
    1,
    'Method',
    'a particular way of doing something.',
    'There are many different methods for cooking an egg.',
  ),

// 19. Multinational
  Word(
    1,
    'Multinational',
    'involving or relating to more than one nation.',
    'Many multinational companies operate in different countries around the world.',
  ),

  Word(
    1,
    'Opinion',
    'a view or judgment formed about something, not necessarily based on fact or knowledge.',
    'Everyone has their own opinion on the best way to solve the problem.',
  ),

// 21. Refugee
  Word(
    1,
    'Refugee',
    'a person who has been forced to leave their country because of war, persecution, or natural disaster.',
    'Millions of people around the world are refugees.',
  ),

// 22. Tough
  Word(
    1,
    'Tough',
    'difficult or challenging.',
    'It was a tough decision, but I knew it was the right one.',
  ),

// 23. Crisis
  Word(
    1,
    'Crisis',
    'a time of great difficulty or danger.',
    'The world is facing a climate crisis.',
  ),

// 24. Condition
  Word(
    1,
    'Condition',
    'the state or situation in which something exists.',
    'The patient\'s condition is critical.',
  ),

// 25. Arrival
  Word(
    1,
    'Arrival',
    'the act of arriving.',
    'The plane\'s arrival was delayed due to bad weather.',
  ),

// 26. Departure
  Word(
    1,
    'Departure',
    'the act of leaving.',
    'The ship\'s departure time is set for noon.',
  ),

// 27. Shift
  Word(
    1,
    'Shift',
    'a change in position or direction.',
    'There has been a shift in public opinion on the issue.',
  ),
  Word(
    1,
    'Shift',
    'to change position or direction.',
    'The workers will be shifting to the night shift next week.',
  ),

// 28. Background
  Word(
    1,
    'Background',
    'the circumstances or events that form the setting for an event, statement, or idea.',
    'Her background in engineering helped her land the job.',
  ),

// 29. Recipe
  Word(
    1,
    'Recipe',
    'a set of instructions for preparing a particular dish.',
    'I followed a recipe from my grandmother to bake a delicious apple pie.',
  ),

// 30. Right ( 1,both adjective and noun)
  Word(
    1,
    'Right',
    'correct or morally good.',
    'It is the right thing to do to help those in need.',
  ),
  Word(
    1,
    'Right',
    'a moral or legal entitlement to something.',
    'Everyone has the right to education and healthcare.',
  ),
// 31. Arrest
  Word(
    1,
    'Arrest',
    'to seize ( 1,a person) by legal authority or warrant; take into custody.',
    'The police arrested the suspect for robbery.',
  ),

// 32. Instant
  Word(
    1,
    'Instant',
    'a very short time.',
    'The cake was ready in an instant.',
  ),
  Word(
    1,
    'Instant',
    'adjective: happening immediately.',
    'I needed an instant answer to the question.',
  ),

// 33. Historical
  Word(
    1,
    'Historical',
    'relating to or belonging to the past.',
    'The city has many historical landmarks.',
  ),

// 34. Attention
  Word(
    1,
    'Attention',
    'the act of listening to or noticing someone or something.',
    'The teacher called for attention from the students.',
  ),

// 35. Compensation
  Word(
    1,
    'Compensation',
    'something given or done to make up for a loss, service, or injury.',
    'The worker received compensation for his work-related injury.',
  ),

// 36. Supply
  Word(
    1,
    'Supply',
    'a quantity of something that is available for use.',
    'There is a limited supply of water in the desert.',
  ),
  Word(
    1,
    'Supply',
    'to provide someone or something with something that is needed or wanted.',
    'The factory supplies car parts to many companies.',
  ),

// 37. Meet
  Word(
    1,
    'Meet',
    'to come into the presence of someone or something.',
    'I met my friend for coffee this morning.',
  ),

// 38. Annoy
  Word(
    1,
    'Annoy',
    'to make someone feel slightly angry or frustrated.',
    'The constant noise was starting to annoy me.',
  ),

// 39. Propose
  Word(
    1,
    'Propose',
    'to suggest a plan or course of action for consideration.',
    'She proposed a new strategy for marketing the product.',
  ),

// 40. Hide
  Word(
    1,
    'Hide',
    'to put or keep something somewhere so that it cannot be seen.',
    'The child hid behind the couch when he saw the stranger.',
  ),

// 41. Pretend
  Word(
    1,
    'Pretend',
    'to behave as if something is true, even though you know it is not.',
    'The children were pretending to be pirates.',
  ),

// 42. Forecast
  Word(
    1,
    'Forecast',
    'a prediction of the weather conditions for a future time.',
    'The weather forecast predicts rain for tomorrow.',
  ),

// 43. Prediction
  Word(
    1,
    'Prediction',
    'a statement about what will happen in the future.',
    'The fortune teller made a prediction about my love life.',
  ),

// 44. WPM
  Word(
    1,
    'WPM',
    'words per minute, a unit used to measure typing speed.',
    'My typing speed is around 60 WPM.',
  ),
// 45. Allocate
  Word(
    1,
    'Allocate',
    'to set apart for a particular purpose; assign or distribute.',
    'The government allocated funds for education and healthcare.',
  ),

// 46. Promotion
  Word(
    1,
    'Promotion',
    'an advancement to a higher position or rank.',
    'She received a promotion after years of hard work.',
  ),

// 47. Limitation
  Word(
    1,
    'Limitation',
    'a restriction or condition that prevents something from being done completely.',
    'There are limitations to how much weight a bridge can hold.',
  ),

// 48. Survive
  Word(
    1,
    'Survive',
    'to continue to live or exist, especially after a difficult or dangerous experience.',
    'The injured animal miraculously survived the accident.',
  ),

// 49. Lifestyle
  Word(
    1,
    'Lifestyle',
    'the way a person lives, especially as determined by their income, culture, and social status.',
    'He leads a healthy lifestyle that includes regular exercise and a balanced diet.',
  ),

// 50. Latest
  Word(
    1,
    'Latest',
    'the most recent.',
    'Have you seen the latest news report?',
  ),

// 51. Crime
  Word(
    1,
    'Crime',
    'an action or omission that constitutes an offense against the law.',
    'Theft is a serious crime.',
  ),

// 52. Report
  Word(
    1,
    'Report',
    'a formal statement giving information about something that has happened or been done.',
    'The police filed a report on the robbery.',
  ),
  Word(
    1,
    'Report',
    'to give an account of something that has happened or been done.',
    'She reported the incident to her supervisor.',
  ),

// 53. Victim
  Word(
    1,
    'Victim',
    'a person who suffers from a crime or accident.',
    'The fire victims lost everything they owned.',
  ),

// 54. Rest Room
  Word(
    1,
    'Rest Room',
    'a room in a public building that has toilets and sinks.',
    'Excuse me, where is the nearest rest room?',
  ),

// 55. Procedure
  Word(
    1,
    'Procedure',
    'a series of actions that are regularly followed in carrying out a particular activity.',
    'The doctor explained the surgical procedure to the patient.',
  ),

// 56. Subsidy
  Word(
    1,
    'Subsidy',
    'a financial or other form of assistance given by the government to a business or economic sector.',
    'The government provides subsidies to farmers to help them cover their costs.',
  ),

// 57. Several
  Word(
    1,
    'Several',
    'more than two but not many.',
    'Several people attended the meeting.',
  ),

// 58. Spam
  Word(
    1,
    'Spam',
    'unsolicited electronic messages, typically of a commercial nature.',
    'I get so much spam in my email inbox.',
  ),

// 59. Schedule
  Word(
    1,
    'Schedule',
    'a list of planned events or appointments.',
    'I need to check my schedule to see if I am free this afternoon.',
  ),
  Word(
    1,
    'Schedule',
    'to arrange something to happen at a particular time.',
    'The doctor scheduled my surgery for next week.',
  ),

// 60. Investor
  Word(
    1,
    'Investor',
    'a person who commits capital to an enterprise with the expectation of deriving a financial return.',
    'Many investors are looking for new businesses to invest in.',
  ),

// 61. Virtual
  Word(
    1,
    'Virtual',
    'existing or occurring on a computer or network.',
    'We had a virtual meeting with our colleagues in another country.',
  ),
// 62. Features
  Word(
    1,
    'Features',
    'the distinctive characteristics or qualities of something.',
    'The new phone has many impressive features, such as a long-lasting battery and a high-resolution camera.',
  ),

// 63. Procurement
  Word(
    1,
    'Procurement',
    'the act of obtaining or buying goods or services.',
    'The company\'s procurement department is responsible for purchasing all necessary supplies.',
  ),

// 64. Interfere
  Word(
    1,
    'Interfere',
    'to prevent or hinder something from happening as expected.',
    'Please don\'t interfere with my work.',
  ),

// 65. Discount
  Word(
    1,
    'Discount',
    'a reduction in the price of something.',
    'The store is offering a 20% discount on all furniture this weekend.',
  ),

// 66. Side effects
  Word(
    1,
    'Side effects',
    'unintended or secondary effects of a drug or medical treatment.',
    'Taking aspirin can have side effects like stomach upset.',
  ),

// 67. Clone
  Word(
    1,
    'Clone',
    'an organism that is an exact copy of another individual.',
    'Scientists are now able to clone sheep and other animals.',
  ),
  Word(
    1,
    'Clone',
    'to create an identical copy of something.',
    'I cloned the document so I could have a backup.',
  ),

// 68. Showcase
  Word(
    1,
    'Showcase',
    'to display something prominently in order to attract attention to it.',
    'The museum is showcasing a collection of ancient artifacts.',
  ),

  Word(1, 'Amazing', 'Causing great surprise or wonder; astonishing.',
      'The view from the top of the mountain was amazing.'),
  Word(
      1,
      'Unimaginable',
      'ou cannot even imagine it due to being too good or too bad!',
      'The level of destruction caused by the earthquake was unimaginable.We had an unimaginable trip We stayed at an unimaginable hote'),
  Word(1, 'Phenomenal', 'great and amazing in an unusual or surprising way',
      'The success of the event was phenomenal.The view from our hotel was phenomenal'),
  Word(
      1,
      'Remarkable',
      'Sth that has a special feature that you cannot help but notice it!',
      'Graduating from college is a remarkable achievement The design of the Eiffel tower is remarkable'),
  Word(1, 'staggering', 'hocking and surprising because of being too large',
      'The house costs a staggering \$10 milion! It costs a staggering \$5000 a week to live here!'),
  Word(
      1,
      'Majestic',
      'Having or showing impressive beauty or dignity. beautiful and powerful',
      'We enjoyed the majestic mountain view! The village is surrounded by majestic mountain scenery!'),
  Word(
      1,
      'Awe-inspiring',
      'Sth that causes you to feel great respect or admiration',
      'Her knowledge of computer is absolutely awe-inspiring! That wasn\’t a very awe-inspiring performance by the actor! The building had an awe-inspiring design!'),
  Word(
      1,
      'Breathtaking',
      'Sth that is so good, so great that it takes your breath',
      'The sunset over the ocean was breathtaking. She is a breathtaking woman'),
  Word(1, 'Spectacular', 'Beautiful in a dramatic and eye-catching way.',
      'The fireworks display was spectacular. The power of the dog was a spectacular movie!'),
  Word(1, 'Stunning', 'Extremely impressive or attractive.',
      'She looked stunning in her wedding dress.Rome is a stunning city with its spectacular monuments!'),
  Word(1, 'Splendid', 'Magnificent; very impressive.extremely good, beautiful',
      'The hotel had splendid views of the mountains.You look splendid in that breathtaking dress!'),
  Word(1, 'Dude', 'A term used to address a male friend or acquaintance.',
      'Hey dude, what\'s up?'),
  Word(1, 'Relax', 'To calm down or become less tense.',
      'Take a deep breath and relax; everything will be fine.'),
  Word(
      1,
      'Cram',
      'To study intensively in a short period of time, typically before an exam.',
      'I need to cram for my final exams tomorrow.'),
  Word(
      1,
      'To ace',
      'To achieve a high score or perform exceptionally well in a task or exam.',
      'He studied hard and managed to ace the test.'),
  Word(1, 'Lit', 'Exciting, amazing, or excellent.',
      'The party last night was lit!'),
  Word(1, 'Dope', 'Cool, excellent, or impressive.',
      'That new song is really dope!'),
  Word(1, 'Nuts', 'Crazy or insane.', 'The traffic was nuts this morning.'),
  Word(
      1,
      'Modest',
      'Having or showing a moderate or humble estimate of one\'s abilities or achievements.',
      'She\'s very talented but remains modest about her accomplishments.'),
  Word(
      1,
      'Something has the drip',
      'Something is stylish, trendy, or fashionable.',
      'That outfit has the drip; you look great!'),
  Word(1, 'Low-key', 'Subtle, restrained, or not attracting much attention.',
      'I\'m low-key excited for the weekend.'),
  Word(
      1,
      'Bae',
      'A term of endearment for a romantic partner, often used to refer to a boyfriend or girlfriend.',
      'She\'s my bae; we\'ve been dating for six months.'),
  Word(1, 'On fleek', 'Stylish, well-groomed, or perfectly executed.',
      'Her eyebrows are on fleek today!'),
  Word(1, 'To hit the books', 'To study intensively.',
      'I need to hit the books if I want to pass this exam.'),
  Word(1, 'Hyped', 'Excited or enthusiastic about something.',
      'I\'m hyped for the concert tonight!'),
  Word(
      1,
      'To be jonesing for it',
      'To have a strong craving or desire for something.',
      'I\'m jonesing for a slice of pizza right now.'),
  Word(
      1,
      'A dead place',
      'A location or situation lacking excitement or energy.',
      'The party was supposed to be fun, but it turned out to be a dead place.'),
  Word(
      1,
      'On the other hand',
      'Used to introduce a contrasting or opposing point or idea.',
      'I enjoy the city life. On the other hand, I appreciate the tranquility of the countryside.'),
  Word(
      1,
      'However',
      'Indicates a contrast or contradiction to the previous statement.',
      'She planned to go out; however, she changed her mind at the last minute.'),
  Word(
      1,
      'Yet',
      'Indicates something that has not happened or become true up to the present time.',
      'She is intelligent, yet she often doubts her abilities.'),
  Word(
      1,
      'Nonetheless / Nevertheless',
      'In spite of what has just been said; notwithstanding; all the same.',
      'The weather was not ideal; nonetheless, they decided to go for a hike.'),
  Word(
      1,
      'Even though / Although',
      'Introduces a subordinate clause that expresses a concession or contrast.',
      'Even though it was raining, they went for a walk in the park.'),
  Word(
      1,
      'Though',
      'Used to introduce a statement that contrasts with or seems to contradict something that has been said previously.',
      'He said he would come. It seems unlikely, though.'),
  Word(
      1,
      'In spite of / Despite',
      'Introduces a phrase or clause indicating contrast or concession.',
      'In spite of the rain, they decided to go for a picnic.'),
  Word(1, 'Admit', 'to say / accept that something is true',
      'She admitted that she had made a mistake ,He admitted that he had been wrong!'),
  Word(
      1,
      'Confess',
      'To admit or acknowledge something reluctantly, typically because one feels guilty or embarrassed.',
      'He confessed to the crime after being questioned by the police.'),
  Word(
      1,
      'Deny',
      'To state that one refuses to admit the truth or existence of.',
      'He denied any involvement in the incident.'),
  Word(1, 'Object', 'To express or raise an objection or disapproval.',
      'She objected to the proposal on ethical grounds.'),
  Word(
      1,
      'Complain',
      'To express dissatisfaction or annoyance about something.',
      'She complained about the noise from the construction site.'),
  Word(
      1,
      'Advise',
      'To offer suggestions or recommendations to someone about what they should do.',
      'He advised her to seek legal counsel before signing the contract.'),
  Word(
      1,
      'Assure',
      'To tell someone something positively or confidently to dispel any doubts they may have.',
      'He assured her that everything would be okay.'),
  Word(1, 'Mention', 'To refer to or speak about briefly or in passing.',
      'She mentioned her upcoming trip during the meeting.'),
  Word(1, 'Reply', 'To say or write something in response to someone.',
      'He replied to her email promptly.'),
  Word(
      1,
      'Report',
      'To give a spoken or written account of something that one has observed, heard, done, or investigated.',
      'She reported the incident to the authorities.'),
  Word(1, 'Bright', 'Smart and quick to learn ,Smart / Wise ',
      'They are bright children, always asking question'),
  Word(1, 'Ingenious', 'Very clever and skillful ,Smart / Wise ',
      'She proposed an ingenious solution to the problem.'),
  Word(
      1,
      ' Knowledgeable',
      'Knowing a lot, having a lot of knowledge Smart,Wise',
      'He is the only knowledgeable professor at our university'),
  Word(1, 'Gigantic', 'Very big, Very huge',
      'They bought a gigantic house in the suburbs'),
  Word(1, 'Tremendous', 'a very large / big amount of something',
      'They are making a tremendous amount of noise'),
  Word(1, 'Immense', 'Extremely large in size',
      'He inherited an immense amount of money '),
  Word(1, 'Teeny tiny', 'Very small', 'I only had a teeny tiny slice of cake'),
  Word(1, 'Minute', 'Extremely small ',
      'You should read the contract in minute detail'),
  Word(1, 'Miniscule', 'Very little, very small ',
      'I only had a miniscule piece of toast this morning'),
  Word(1, 'to like /admire', 'to respect and approve of something / somebody',
      'I admire her for her determination.'),
  Word(1, 'to appreciate', 'to realize how good something is',
      'I always appreciate a funny joke when I’m out with my friends'),
  Word(1, 'to fancy ( 1, something )', 'to want something, to like something',
      'Do you fancy a cup of tea? Do you fancy a cuppa? Fancy a cuppa?'),
  Word(1, 'Despicable', 'Very unpleasant, very bad',
      'He is a despicable human being'),
  Word(1, 'Sinister', 'Evil, very bad',
      'She has dark sinister eyes that make you nervous when she looks at you!'),
  Word(1, 'Wicked', 'evil or morally wrong.',
      'He was a wicked ruler who murdered his own people!'),
  Word(
      1,
      'Appreciate',
      'recognize the full worth of something; be grateful for it.',
      'I appreciate your help.'),
  Word(1, 'Attractive', 'pleasing to the eye or mind.',
      'She had an attractive smile.'),
  Word(1, 'Caring', 'showing sympathy and concern for others.',
      'He was a caring father.'),
  Word(1, 'Figure', 'a human or animal form represented in art or sculpture.',
      'The painting depicted a lone figure on a beach.'),
  Word(1, 'Winner', 'one that wins; victor.',
      'The winner of the race received a gold medal.'),
  Word(
      1,
      'Destruction',
      'the action of spoiling or damaging something completely.',
      'The earthquake caused widespread destruction.'),
  Word(1, 'Bat', 'A piece of equipment used by a batsman to hit the ball.',
      'The batsman held the bat firmly as he prepared to face the bowler.'),
  Word(
      1,
      'Ball',
      'The object bowled by the bowler and struck by the batsman in cricket.',
      'The bowler delivered a fast ball aimed at the stumps.'),
  Word(
      1,
      'Wicket',
      'A set of three stumps and two bails, typically with the stumps being the wooden poles and the bails sitting across the top of them.',
      'The bowler knocked over the wicket with a yorker.'),
  Word(
      1,
      'Run',
      'A unit of scoring in cricket, achieved by the batsmen running between the wickets after the ball has been hit.',
      'The batsman completed a quick run after playing the ball into the gap.'),
  Word(
      1,
      'Boundary',
      'The edge or boundary of the playing field, typically marked by a rope or line.',
      'The ball crossed the boundary line, resulting in a four.'),
  Word(
      1,
      'Six',
      'A scoring shot in cricket where the ball is hit over the boundary without bouncing.',
      'The batsman smashed the ball for a massive six over long-off.'),
  Word(
      1,
      'Four',
      'A scoring shot in cricket where the ball reaches the boundary after bouncing on the ground.',
      'The batsman drove the ball through the covers for a boundary.'),
  Word(
      1,
      'Over',
      'A set of six consecutive legal deliveries bowled by one bowler.',
      'The bowler completed a maiden over, conceding no runs.'),
  Word(1, 'Maiden', 'An over in which no runs are scored by the batsman.',
      'The bowler bowled a maiden over to build pressure on the batsmen.'),
  Word(1, 'Bowler', 'A player who delivers the ball to the batsman in cricket.',
      'The bowler adjusted his run-up before delivering the next ball.'),
  Word(
      1,
      'Batsman',
      'A player who is currently batting or has the potential to bat in a cricket match.',
      'The opening batsman faced the new ball confidently.'),
  Word(
      1,
      'Fielder',
      'A player positioned to field or catch the ball during the opposition\'s batting innings.',
      'The fielder dived to his left to take a spectacular catch.'),
  Word(
      1,
      'Captain',
      'The leader of the cricket team, responsible for making strategic decisions on the field.',
      'The captain called for a change in bowling tactics.'),
  Word(
      1,
      'Umpire',
      'An official responsible for making decisions and enforcing the rules during a cricket match.',
      'The umpire raised his finger to signal the batsman\'s dismissal.'),
  Word(
      1,
      'Stump',
      'One of the three vertical posts that form the wicket, usually made of wood.',
      'The ball crashed into the stump, dislodging the bail.'),
  Word(
      1,
      'Bail',
      'One of the two smaller wooden pieces placed on top of the stumps to form the wicket.',
      'The bail fell off the stumps, signaling the batsman\'s dismissal.'),
  Word(
      1,
      'Crease',
      'A line or mark drawn on the pitch to indicate the batsman\'s safe zone.',
      'The batsman grounded his bat behind the crease to avoid a run-out.'),
  Word(
      1,
      'No ball',
      'An illegal delivery by the bowler, resulting in a penalty to the batting side.',
      'The bowler overstepped the crease, bowling a no ball.'),
  Word(
      1,
      'Wide',
      'A delivery that is outside the batsman\'s reach and judged by the umpire to be too wide to be fairly playable.',
      'The umpire signaled a wide for the ball that passed outside the guideline.'),
  Word(
      1,
      'Leg bye',
      'A run scored by the batting team as a result of the ball hitting the batsman\'s body or clothing.',
      'The batsman missed the ball, but the ball hit his pads, and they took a leg bye.'),
  Word(
      1,
      'Bye',
      'A run scored by the batting team when the ball passes the batsman without being struck.',
      'The wicketkeeper failed to collect the ball, and the batsmen ran a bye.'),
  Word(
      1,
      'Slip',
      'A fielding position close to the wicketkeeper, typically used for catching.',
      'The fielder took a sharp catch at slip to dismiss the batsman.'),
  Word(
      1,
      'Gully',
      'A fielding position close to the slips, used to catch balls that have been edged by the batsman.',
      'The ball flew off the edge of the bat and was caught by the fielder at gully.'),
  Word(
      1,
      'Cover',
      'A fielding position on the off side, typically used to stop or field balls hit along the ground.',
      'The batsman drove the ball straight to the fielder at cover.'),
  Word(1, 'Construction', 'the act of building something.',
      'The construction of the new bridge is underway.'),
  Word(1, 'Cheers', 'an expression of approval, encouragement, or celebration.',
      'Cheers to the happy couple!'),
  Word(1, 'Gorgeous', 'very beautiful or attractive.',
      'She was wearing a gorgeous dress.'),
  Word(1, 'Execution', 'the carrying out of an action or plan.',
      'The execution of the project was flawless.'),
  Word(
      1,
      'Give up',
      'to stop trying to do something or to stop hoping for something.',
      'Don\'t give up on your dreams.'),
  Word(1, 'Profound', 'very great or intense.',
      'He made a profound impact on my life.'),
  Word(1, 'Evaluation', 'the action of assessing something or someone.',
      'The teacher gave an evaluation of each student\'s work.'),
  Word(1, 'Wholesale', 'the sale of goods in large quantities to retailers.',
      'He bought the furniture wholesale.'),
  Word(1, 'Retail price', 'the price at which a good is sold to the public.',
      'The retail price of the book was \$20.'),
  Word(
      1,
      'Competitive',
      'showing a strong desire to win or to be better than others.',
      'The market is very competitive.'),
  Word(1, 'Surrounding', 'forming a circle or ring around something.',
      'The house was surrounded by trees.'),
  Word(1, 'Silly', 'foolish or lacking in seriousness.',
      'He made a silly mistake.'),
  Word(1, 'Greeting', 'an expression of welcome or introduction.',
      'He gave her a warm greeting.'),
  Word(1, 'Character', 'the mental and moral qualities of a person.',
      'He has a strong character.'),
  Word(
      1,
      'CC',
      'abbreviation for "carbon copy", used in email to indicate that a copy of the email has been sent to someone else.',
      'Please CC your manager on this email.'),
  Word(1, 'Brilliant', 'exceptionally clever or talented.',
      'She is a brilliant scientist.'),
  Word(
      1,
      'Culture',
      'the customs, arts, social institutions, and achievements of a particular nation, people, or other group.',
      'Japanese culture is very different from Western culture.'),
  Word(
      1,
      'Respiration',
      'the process of taking in oxygen and releasing carbon dioxide from the body.',
      'Respiration is essential for life.'),
  Word(1, 'Purification', 'the act of making something clean or pure.',
      'The water purification plant provides clean drinking water for the city.'),
  Word(
      1,
      'Diagnosis',
      'the identification of the nature and cause of a disease.',
      'The doctor was able to make a diagnosis after examining the patient.'),
  Word(1, 'Growth', 'the process of increasing in size or number.',
      'The company has experienced significant growth in recent years.'),
  Word(
      1,
      'Infection',
      'a disease caused by the invasion of an organism into the body.',
      'The wound became infected.'),
  Word(1, 'Expenditure', 'the action of spending money.',
      'The government is trying to reduce its expenditures.'),
  Word(1, 'Manage', 'to be in charge of or deal with something successfully.',
      'She manages a team of ten employees.'),
  Word(
      1,
      'Living cost',
      'the amount of money that is needed to live in a particular place.',
      'The living cost in London is very high'),
  Word(
      1,
      'Dating',
      'the activity of going out on social occasions with someone you are romantically interested in.',
      'They had been dating for a several months.'),
  Word(1, 'Exciting', 'causing great enthusiasm or interest.',
      'It was an exciting adventure.'),
  Word(1, 'Mistake', 'an error in judgment or conduct.',
      'It was a mistake to trust him.'),
  Word(1, 'Tension', 'a state of mental or nervous strain.',
      'There was a lot of tension in the room.'),
  Word(
      1,
      'Environment',
      'the surroundings or conditions in which something is developed or exists.',
      'We need to protect the environment.'),
  Word(
      1,
      'Pollution',
      'the presence in the environment of a substance which has harmful or unpleasant effects.',
      'Air pollution is a major problem in big cities.'),
  Word(1, 'Talented', 'having a natural aptitude or skill.',
      'She is a talented musician.'),
  Word(1, 'DC', 'abbreviation for "direct current".',
      'This battery provides DC power.'),
  Word(
      1,
      'Intelligent',
      'having or showing intelligence, especially of a high level.',
      'He was an intelligent student.'),
  Word(1, 'Negotiate', 'to discuss the terms of a settlement or agreement.',
      'They negotiated a peace treaty.'),
  Word(
      1,
      'Troll',
      'someone who makes deliberately offensive or provocative online posts to upset other users.',
      'Don\'t feed the trolls, just ignore them.'),
  Word(1, 'Connections', 'the act of connecting something with something else.',
      'He has good connections in the business world.'),
  Word(1, 'Communication', 'the act of conveying information or ideas.',
      'Effective communication is essential in any relationship.'),
  Word(
      1,
      'OMG',
      'abbreviation for "Oh My God", used to express surprise or shock.',
      'OMG, I can\'t believe you said that!'),
  Word(1, 'Oh My Gosh', 'a mild exclamation of surprise or shock.',
      'Oh my gosh, I forgot to buy milk!'),
  Word(1, 'Necessity', 'the state or fact of being essential.',
      'Food and water are necessities of life.'),
  Word(1, 'Bargaining', 'the act of negotiating the price of something.',
      'We spent all afternoon bargaining at the market.'),
  Word(
      1,
      'Separation',
      'the act of separating something or someone from something or someone else.',
      'The separation of church and state is a fundamental principle of American government.'),
  Word(
      1,
      'Artificial',
      'made or produced by human beings rather than occurring naturally.',
      'Artificial intelligence is a rapidly developing field.'),
  Word(1, 'Outstanding', 'exceptionally good or impressive.',
      'She did an outstanding job on the presentation.'),
  Word(
      1,
      'Basement',
      'the lowest floor of a building, usually entirely or partly below ground level.',
      'The kids were playing in the basement.'),
  Word(
      1,
      'Entertainment',
      'the action of providing or being provided with amusement or enjoyment.',
      'We went to the movies for entertainment.'),
  Word(1, 'Exit', 'a way out of a place.',
      'The fire exit is at the end of the hall.'),
  Word(1, 'Underworld', 'a region conceived as the abode of the dead.',
      'In some mythologies, the underworld is a dark and gloomy place.'),
  Word(
      1,
      'Experience',
      'the practical knowledge or skill gained from what one has seen or done.',
      'He had a lot of experience in the field.'),
  Word(1, 'Misunderstanding', 'a failure to understand something correctly.',
      'There was a misunderstanding about the meeting time.'),
  Word(
      1,
      'Discipline',
      'training that corrects or molds behavior and character.',
      'Self-discipline is essential for success.'),
  Word(1, 'Investigation', 'a formal inquiry or examination into something.',
      'The police are conducting an investigation into the crime.'),
  Word(1, 'Transfer', 'to move something from one place or person to another.',
      'He transferred the money to her account.'),
  Word(1, 'Concentration', 'the act of focusing your attention on something.',
      'Good concentration is essential for studying.'),
  Word(1, 'Creative', 'having the ability to create new things.',
      'She is a very creative artist.'),
  Word(
      1,
      'Architecture',
      'the art or practice of designing and building structures.',
      'Gothic architecture is characterized by pointed arches and ribbed vaults.'),
  Word(1, 'Treat', 'something special that is given to someone to enjoy.',
      'She gave him a chocolate bar as a treat.'),
  Word(1, 'Caution', 'careful consideration of the potential dangers or risks.',
      'Proceed with caution when working with hazardous materials.'),
  Word(
      1,
      'Treatment',
      'the process of caring for someone who is sick or injured.',
      'He received treatment for his cancer at the hospital.'),
  Word(
      1,
      'Interrogation',
      'the formal questioning of someone, especially by a police officer, to obtain information.',
      'The suspect was subjected to a lengthy interrogation.'),
  Word(1, 'Identity', 'the distinctive character or personality of a person.',
      'He was struggling to find his identity.'),
  Word(1, 'Interesting', 'arousing curiosity or interest; engaging.',
      'It was an interesting book to read.'),
  Word(1, 'Home made', 'made at home, rather than bought from a shop.',
      'She served us a delicious home-made cake.'),
  Word(
      1,
      'Content',
      'the information and ideas that are expressed in a piece of writing or speech.',
      'The content of the article was very informative.'),
  Word(
      1,
      'Movement',
      'the act or process of moving something from one place to another.',
      'There was a lot of movement on the dance floor.'),
  Word(
      1,
      'Transparency',
      'the quality of being transparent; openness, clarity, and accountability.',
      'Transparency is essential in government.'),
  Word(1, 'Differ', 'to be unlike or dissimilar in some way.',
      'These two theories differ on some key points.'),
  Word(1, 'Appraisal', 'an assessment of the value or quality of something.',
      'The house received a high appraisal from the bank.'),
  Word(
      1,
      'Complexion',
      'the general appearance of someone\'s skin, especially their face.',
      'She had a rosy complexion.'),
  Word(
      1,
      'Weed',
      'a plant that is considered to be undesirable in a particular situation.',
      'We need to weed the garden.'),
  Word(1, 'Trauma', 'a serious psychological or emotional shock.',
      'She was suffering from trauma after the accident.'),
  Word(1, 'Courtesy', 'polite behavior towards others.',
      'He treated everyone with courtesy.'),
  Word(
      1,
      'Mental health',
      'a person\'s condition with regard to their mental and emotional well-being.',
      'It\'s important to take care of your mental health.'),
  Word(
      1,
      'IQ',
      'abbreviation for "intelligence quotient", a score designed to assess human intelligence.',
      'IQ tests are not a perfect measure of intelligence.'),
  Word(
      1,
      'Quotient',
      'a number expressing a mathematical relationship between two other numbers.',
      'The quotient of 10 divided by 2 is 5.'),
  Word(1, 'Support', 'the action of providing help or encouragement.',
      'She received a lot of support from her friends.'),
  Word(
      1,
      'Conversation',
      'a spoken exchange of information or ideas between two or more people.',
      'They had a long conversation about their plans for the future.'),
  Word(
      1,
      'Conflict',
      'a serious disagreement or argument between two or more people.',
      'There was a conflict between the two companies.'),
  Word(1, 'Interest', 'a feeling of curiosity or concern about something.',
      'She showed a lot of interest in his work.'),
  Word(1, 'Mutual', 'shared or experienced by two or more people.',
      'They had a mutual respect for each other.'),
  Word(1, 'Virgin', 'a person who has never had sexual intercourse.',
      'The term "virgin" is used in different ways in different cultures.'),
  Word(1, 'Techniques', 'the skilled or methodical way of doing something.',
      'She used a variety of teaching techniques to keep the students engaged.'),
  Word(1, 'Broke', 'having no money.',
      'He was broke and couldn\'t afford to pay rent.'),
  Word(
      1,
      'Frustration',
      'a feeling of annoyance or disappointment caused by something that cannot be done or achieved.',
      'He felt a lot of frustration with his job.'),
  Word(
      1,
      'Depression',
      'a mental health condition characterized by persistently low mood and a loss of interest or pleasure in activities that were once enjoyed.',
      'If you are feeling depressed, it is important to seek professional help.'),
  Word(1, 'Daring', 'willing to take risks or brave challenges.',
      'It was a daring escape attempt.'),
  Word(1, 'Violence', 'the use of physical force to injure or harm someone.',
      'Violence is never the answer.'),
  Word(
      1,
      'Jealous',
      'feeling or showing envy of someone else\'s advantages, possessions, or relationships.',
      'She was jealous of her sister\'s success.'),
  Word(1, 'Monotonous', 'lacking in variety or interest; tedious.',
      'He had a monotonous job that he hated.'),
  Word(1, 'Distance', 'the amount of space between two things or people.',
      'There was a great distance between the two cities.'),
  Word(1, 'Hospitality', 'the friendly and generous reception of guests.',
      'They were known for their hospitality.'),
  Word(1, 'Victory', 'a triumph over an opponent or adversary.',
      'The team celebrated their victory with a parade.'),
  Word(1, 'Decoration', 'the process or art of decorating something.',
      'She spent hours on decoration to make her house look festive.'),
  Word(
      1,
      'Video',
      'the recording, reproducing, or broadcasting of moving visual images.',
      'He uploaded the video of his trip to YouTube.'),
  Word(1, 'Conference', 'a formal meeting for discussion.',
      'She attended a conference on environmental sustainability.'),
  Word(
      1,
      'Pandemic',
      'an outbreak of a disease that occurs over a wide geographic area and affects an exceptionally high proportion of the population.',
      'The government implemented strict measures to control the spread of the pandemic.'),
  Word(1, 'Innovation', 'the introduction of something new.',
      'The company is known for its culture of innovation and creativity.'),
  Word(
      1,
      'Arranged Marriage',
      'a marriage planned and agreed to by the families or guardians of the couple involved.',
      'In some cultures, arranged marriages are still common.'),
  Word(
      1,
      'Love Marriage',
      'a marriage that is based on mutual love, attraction, and consent of the individuals involved.',
      'They decided to have a love marriage despite opposition from their families.'),
  Word(1, 'Choosy', 'excessively fastidious or selective.',
      'She is very choosy about the kind of clothes she wears.'),
  Word(
      1,
      'Choice',
      'an act of selecting or making a decision when faced with two or more possibilities.',
      'She had to make a difficult choice between two job offers.'),
  Word(
      1,
      'Partner',
      'a person who takes part in an undertaking with another or others, especially in a business or company with shared risks and profits.',
      'They decided to become business partners and start a company together.'),
  Word(1, 'Expire', 'come to an end or run out.',
      'The contract will expire at the end of the month.'),
  Word(
      1,
      'Situation',
      'a set of circumstances in which one finds oneself; a state of affairs.',
      'The current economic situation is challenging for many businesses.'),
  Word(
      1,
      'Information',
      'facts provided or learned about something or someone.',
      'He shared valuable information about the upcoming project.'),
  Word(
      1,
      'Patience',
      'the capacity to accept or tolerate delay, trouble, or suffering without getting angry or upset.',
      'She handled the situation with patience and grace.'),
  Word(1, 'Broker', 'a person who buys and sells goods or assets for others.',
      'He hired a real estate broker to help him find a new house.'),
  Word(
      1,
      'Corruption',
      'dishonest or fraudulent conduct by those in power, typically involving bribery.',
      'The government promised to crack down on corruption in public institutions.'),
  Word(
      1,
      'Rumour',
      'a currently circulating story or report of uncertain or doubtful truth.',
      'She heard a rumor that her company was going to lay off employees.'),
  Word(
      1,
      'Confidence',
      'the feeling or belief that one can rely on someone or something; firm trust.',
      'She has confidence in her team to complete the project successfully.'),
  Word(
      1,
      'lockdown',
      'a state of isolation or restricted access instituted as a security measure.',
      'During the pandemic, the government imposed a strict lockdown to curb the spread of the virus.'),
  Word(
      1,
      'Message',
      'a verbal, written, or recorded communication sent to or left for a recipient who cannot be contacted directly.',
      'She received a message on her phone informing her of the meeting time.'),
  Word(
      1,
      'Epidemic',
      'a widespread occurrence of an infectious disease in a community at a particular time.',
      'The flu epidemic caused many people to become ill and overwhelmed hospitals.'),
  Word(1, 'WFH', 'an abbreviation for "Work From Home".',
      'Since the office was closed due to the pandemic, employees had to WFH.'),
  Word(1, 'Messenger', 'a person or thing that carries a message.',
      'The messenger delivered the urgent package to the recipient.'),
  Word(
      1,
      'Selfie',
      'a photograph that one has taken of oneself, typically one taken with a smartphone or webcam and shared via social media.',
      'She snapped a quick selfie with her friends at the party.'),
  Word(
      1,
      'Sale',
      'the exchange of a commodity for money; the action of selling something.',
      'The store announced a huge sale with discounts on all items.'),
  Word(1, 'JobSmart', 'having a clever or quick-witted approach to work.',
      'She always finds innovative solutions to problems; shes really JobSmart.'),
  Word(1, 'Seasonal', 'occurring at or dependent on a particular season.',
      'Pumpkin spice lattes are a seasonal favorite during the fall months.'),
  Word(1, 'Beautiful', 'pleasing the senses or mind aesthetically.',
      'The sunset over the ocean was absolutely beautiful.'),
  Word(1, 'Amazing', 'causing great surprise or wonder; astonishing.',
      'The magician performed an amazing trick that left the audience speechless.'),
  Word(1, 'Fantastic', 'extraordinarily good or attractive.',
      'She received a fantastic job offer that she couldn\'t refuse.'),
  Word(1, 'Awesome', 'extremely impressive or daunting; inspiring awe.',
      'The view from the top of the mountain was truly awesome.'),
  Word(
      1,
      'Serial',
      'consisting of, forming part of, or taking place in a series.',
      'The crime thriller was a serial novel published in weekly installments.'),
  Word(
      1,
      'Blockbuster',
      'a thing of great power or size, in particular a film, book, or other product that is a great commercial success.',
      'The new movie release was expected to be a blockbuster hit.'),
  Word(
      1,
      'Booking',
      'the arrangement or reservation of accommodations, tickets, etc.',
      'She made a booking for a hotel room for their vacation.'),
  Word(
      1,
      'Online',
      'controlled by or connected to another computer or to a network.',
      'She prefers to do her shopping online rather than in stores.'),
  Word(1, 'Offline', 'not connected to the internet or to a computer network.',
      'You can play the game offline if you don\'t have an internet connection.'),
  Word(1, 'Better', 'of a more excellent or effective type or quality.',
      'She promised to do better on her next exam after studying harder.'),
  Word(1, 'Leave', 'permission to be absent from work or duty.',
      'He requested leave from his boss to attend his sister\'s wedding.'),
  Word(
    1,
    'Vacation',
    'a period of time devoted to pleasure, rest, or relaxation away from home or work.',
    'We are going on vacation to the beach next week',
  ),
  Word(
      1,
      'Festival',
      'a day or period of celebration, typically for religious or cultural reasons.',
      'The town holds a festival every year to celebrate its founding.'),
  Word(1, 'Religious', 'relating to or believing in a religion.',
      'She attends religious services every Sunday.'),
  Word(
      1,
      'Remittance',
      'a sum of money sent, especially by mail, in payment for goods or services or as a gift.',
      'He sends a monthly remittance to his family back home.'),
  Word(
      1,
      'Income',
      'money received, especially on a regular basis, for work or through investments.',
      'She has a steady income from her job.'),
  Word(
      1,
      'Manpower',
      'the number of people available or required to perform a particular task.',
      'The company needs to increase its manpower to meet production demands.'),
  Word(
      1,
      'Embassy',
      'the official residence or offices of an ambassador in a foreign country.',
      'He visited the embassy to obtain a visa.'),
  Word(
      1,
      'Appointment',
      'an arrangement to meet someone at a particular time and place.',
      'She made an appointment to see her doctor next Tuesday.'),
  Word(
      1,
      'Interview',
      'a meeting of people face to face, especially for consultation.',
      'He has an interview for a new job tomorrow.'),
  Word(
      1,
      'Foreigner',
      'a person born in or coming from a country other than one\'s own.',
      'As a foreigner, he found it challenging to adapt to the local customs.'),
  Word(1, 'Travel', 'the action of traveling, typically abroad.',
      'She loves to travel and explore new cultures.'),
  Word(1, 'Business', 'a person\'s regular occupation, profession, or trade.',
      'He owns a small business selling handmade jewelry.'),
  Word(
      1,
      'Transport',
      'a system or means of conveying people or goods from place to place by vehicle, aircraft, or ship.',
      'Public transport in the city is efficient and reliable.'),
  Word(
      1,
      'Restaurant',
      'a place where people pay to sit and eat meals that are cooked and served on the premises.',
      'They decided to have dinner at a fancy restaurant downtown.'),
  Word(
      1,
      'Invitation',
      'a written or verbal request inviting someone to go somewhere or to do something.',
      'She received an invitation to her friend\'s wedding.'),
  Word(
      1,
      'Fast Food',
      'easily prepared processed food served in snack bars and restaurants as a quick meal or to be taken away.',
      'They grabbed some fast food on their way to the movies.'),
  Word(1, 'Tasty', 'having a pleasant flavor.',
      'The soup was tasty and satisfying.'),
  Word(1, 'Delicious', 'highly pleasant to the taste.',
      'The cake was delicious; everyone wanted a second slice.'),
  Word(
      1,
      'Delivery',
      'the action of delivering letters, packages, or ordered goods.',
      'The courier promised speedy delivery of the package.'),
  Word(
      1,
      'Product',
      'an article or substance that is manufactured or refined for sale.',
      'The company is launching a new product line next month.'),
  Word(
      1,
      'Profit',
      'a financial gain, especially the difference between the amount earned and the amount spent in buying, operating, or producing something.',
      'The business made a healthy profit last quarter.'),
  Word(1, 'Service', 'the action of helping or doing work for someone.',
      'The hotel provides excellent service to its guests.'),
  Word(
      1,
      'Door to door service',
      'a service provided from one place to another without any intermediary stop.',
      'The moving company offers door to door service for relocating.'),
  Word(1, 'Physical', 'relating to the body as opposed to the mind.',
      'Regular physical exercise is essential for maintaining good health.'),
  Word(
      1,
      'Extramarital',
      'related to or occurring between people who are not married to each other.',
      'He had an extramarital affair that led to the end of his marriage.'),
  Word(
      1,
      'Divorce',
      'the legal dissolution of a marriage by a court or other competent body.',
      'They decided to get a divorce after years of unhappiness.'),
  Word(1, 'Break up', 'end a relationship.',
      'They decided to break up after realizing they wanted different things.'),
  Word(1, 'Relation', 'a person connected by blood or marriage.',
      'He has a close relation with his cousins.'),
  Word(1, 'Hooked Up', 'involved in a romantic or sexual relationship.',
      'She got hooked up with her high school sweetheart.'),
  Word(
      1,
      'Social Media',
      'online platforms and websites that enable people to create and share content or to participate in social networking.',
      'Many businesses use social media to promote their products and engage with customers.'),
  Word(
      1,
      'Abortion',
      'the deliberate termination of a human pregnancy, most often performed during the first 28 weeks of pregnancy.',
      'The debate over abortion rights continues to be a contentious issue in many countries.'),
  Word(
      1,
      'Affair',
      'a sexual relationship between two people, typically when at least one of them is married or in a committed relationship.',
      'She had an affair with her colleague, which led to the end of her marriage.'),
  Word(1, 'Untruthful', 'not expressing or given to expressing the truth.',
      'He became known for being untruthful and unreliable in his statements.'),
  Word(
      1,
      'Trust',
      'firm belief in the reliability, truth, ability, or strength of someone or something.',
      'Trust is the foundation of any healthy relationship.'),
  Word(
      1,
      'Betray',
      'expose ( 1,one\'s country, a group, or a person) to danger by treacherously giving information to an enemy.',
      'She felt deeply hurt when her friend betrayed her trust.'),
  Word(
      1,
      'Addiction',
      'the fact or condition of being addicted to a particular substance, thing, or activity.',
      'He struggled with addiction and sought help to overcome it.'),
  Word(
      1,
      'Drug',
      'a medicine or other substance that has a physiological effect when ingested or otherwise introduced into the body.',
      'The doctor prescribed a drug to manage her chronic pain.'),
  Word(
      1,
      'Admission',
      'the process or act of accepting someone into a place or institution.',
      'She received admission to the prestigious university.'),
  Word(
      1,
      'Amusement Park',
      'a large outdoor area with fairground rides, shows, refreshments, games of chance or skill, and other entertainments.',
      'They spent the day at the amusement park riding roller coasters and playing games.'),
  Word(1, 'Boring', 'not interesting; tedious.',
      'The lecture was so boring that many students fell asleep.'),
  Word(
      1,
      'Exhausted',
      'drained of one\'s physical or mental resources; very tired.',
      'After working for twelve hours straight, she was completely exhausted.'),
  Word(1, 'Meditation', 'the action or practice of meditating.',
      'She practices meditation every morning to calm her mind.'),
  Word(
      1,
      'Yoga',
      'a Hindu spiritual and ascetic discipline, a part of which, including breath control, simple meditation, and the adoption of specific bodily postures, is widely practiced for health and relaxation.',
      'He attends yoga classes twice a week to improve his flexibility.'),
  Word(
      1,
      'Diet',
      'the kinds of food that a person, animal, or community habitually eats.',
      'She follows a strict diet to maintain her weight.'),
  Word(1, 'Overweight', 'above a weight considered normal or desirable.',
      'Being overweight can lead to various health issues.'),
  Word(
      1,
      'Stroke',
      'a sudden disabling attack or loss of consciousness caused by an interruption in the flow of blood to the brain, especially through thrombosis.',
      'He suffered a stroke and was hospitalized for treatment.'),
  Word(
      1,
      'Food Habit',
      'the way in which a person or group eats, considered in terms of what types of food they eat, in what quantities, and when.',
      'His food habits changed drastically after he adopted a vegan lifestyle.'),
  Word(1, 'Mentor', 'an experienced and trusted adviser.',
      'She sought guidance from her mentor when faced with a difficult decision.'),
  Word(1, 'Skills', 'the ability to do something well; expertise.',
      'He possesses excellent communication skills.'),
  Word(
      1,
      'Entrepreneur',
      'a person who sets up a business or businesses, taking on financial risks in the hope of profit.',
      'She aspires to become a successful entrepreneur and start her own company.'),
  Word(
      1,
      'SME',
      'small and medium-sized enterprise; a business that employs a relatively small number of employees.',
      'SMEs play a crucial role in driving economic growth and innovation.'),
  Word(
      1,
      'CV',
      'curriculum vitae; a brief account of a person\'s education, qualifications, and previous experience, typically sent with a job application.',
      'He submitted his CV for the position of marketing manager.'),
  Word(1, 'Application', 'a formal request to an authority for something.',
      'She submitted her college application online.'),
  Word(
      1,
      'Migration',
      'the movement of people from one place to another, especially for work or to live in a different country.',
      'The migration of birds occurs annually during the winter months.'),
  Word(1, 'Hang Out', 'spend time relaxing or enjoying oneself.',
      'They decided to hang out at the park on Saturday afternoon.'),
  Word(1, 'Hurry Up', 'do something more quickly.',
      'Hurry up, or we\'ll be late for the movie!'),
  Word(1, 'Cool', 'fashionably attractive or impressive.',
      'His new car looks really cool.'),
  Word(
      1,
      'Resort',
      'a place that is a popular destination for vacations or recreation.',
      'They stayed at a luxurious resort during their honeymoon.'),

  Word(
    1,
    'Winner',
    'one that wins; victor',
    'All three winners received plaques for their winning presentations.',
  ),

// New Words

  Word(
    1,
    'Destruction',
    'the act of destroying something or the state of being destroyed.',
    'The earthquake caused widespread destruction in the city.',
  ),

  Word(
    1,
    'Construction',
    'the act of building or making something.',
    'The construction of the new bridge is expected to take two years.',
  ),

  Word(
    1,
    'Cheers',
    'an expression of good wishes or approval, often used with a toast.',
    'They raised their glasses and cheered to the birthday boy.',
  ),

  Word(
    1,
    'Gorgeous',
    'extremely beautiful or attractive.',
    'The sunset over the beach was absolutely gorgeous.',
  ),

  Word(
    1,
    'Execution',
    'the carrying out of an action or plan.',
    'The execution of the marketing campaign was a success.',
  ),
  Word(
    1,
    'Execution',
    'the putting to death of a condemned person.',
    'The death penalty is a controversial form of execution.',
  ),

  Word(
    1,
    'Give up',
    'to stop trying to do something because it is too difficult.',
    'Don\'t give up on your dreams!',
  ),

  Word(
    1,
    'Profound',
    'very deep or thorough.',
    'The philosopher had a profound impact on my thinking.',
  ),

  Word(
    1,
    'Evaluation',
    'the act of assessing something or someone.',
    'The teacher gave an evaluation of each student\'s work.',
  ),

  Word(
    1,
    'Wholesale',
    'the sale of goods in large quantities to retailers.',
    'The company buys furniture wholesale and then sells it to individual customers.',
  ),

  Word(
    1,
    'Retail price',
    'the price at which a good or service is sold to the final customer.',
    'The retail price of the jacket is \$100.',
  ),

  Word(
    1,
    'Competitive',
    'eager or willing to compete with others.',
    'The job market is very competitive, so you need to stand out from the crowd.',
  ),

  Word(
    1,
    'Surrounding',
    'located or situated around or near something.',
    'The house is surrounded by beautiful trees.',
  ),
  Word(
    1,
    'Surrounding',
    'adjective: enclosing or bordering something.',
    'The surrounding mountains provided a stunning view.',
  ),

  Word(
    1,
    'Silly',
    'foolish or lacking in seriousness.',
    'It was a silly mistake to leave my phone at home.',
  ),

  Word(
    1,
    'Greeting',
    'a word or gesture expressing welcome or respect.',
    'He gave her a warm greeting when she arrived.',
  ),

  Word(
    1,
    'Character',
    'the mental and moral qualities of a person.',
    'He is a man of good character.',
  ),
  Word(
    1,
    'Character',
    'a person in a story, play, or film.',
    'Harry Potter is a popular fictional character.',
  ),

  Word(
    1,
    'CC',
    'abbreviation for "carbon copy," used in email to indicate that a copy of the email has been sent to someone else.',
    'Please CC your manager on this email.',
  ),

  Word(
    1,
    'Brilliant',
    'exceptionally clever or talented.',
    'She is a brilliant scientist who has made many important discoveries.',
  ),

  Word(
    1,
    'Culture',
    'the customs, arts, social institutions, and achievements of a particular nation or people.',
    'Japanese culture is known for its emphasis on politeness and respect.',
  ),

  Word(
    1,
    'Quality',
    'the standard of something as measured against other things of the same kind; the degree of excellence of something.',
    'The company is committed to providing high-quality products and services.',
  ),

// New Words

  Word(
    1,
    'Marketing',
    'the activity of promoting and selling products or services.',
    'The company launched a new marketing campaign to increase brand awareness.',
  ),

  Word(
    1,
    'Buyer',
    'a person who buys something.',
    'The seller offered a discount to attract more buyers.',
  ),

  Word(
    1,
    'Deal',
    'an agreement between two or more people or parties concerning the sale, purchase, or transfer of something.',
    'They were able to strike a good deal on the new house.',
  ),

  Word(
    1,
    'Decision',
    'a choice made by someone after considering different possibilities.',
    'The manager had to make a difficult decision about the future of the company.',
  ),

  Word(
    1,
    'Search',
    'the act of looking for something.',
    'She did a quick search online to find the answer to her question.',
  ),

  Word(
    1,
    'Research',
    'the systematic investigation into and study of materials and sources in order to establish facts and reach new conclusions.',
    'The scientist is conducting research on a new treatment for cancer.',
  ),

  Word(
    1,
    'Method',
    'a way of doing something in a systematic way, especially according to a set of rules or principles.',
    'There are different methods for teaching a foreign language.',
  ),

  Word(
    1,
    'Multinational',
    'involving or relating to more than one nation.',
    'The company is a multinational corporation with operations in several countries.',
  ),

  Word(
    1,
    'Opinion',
    'a view or judgment formed about something, not necessarily based on facts or knowledge.',
    'Everyone is entitled to their own opinion.',
  ),

  Word(
    1,
    'Refugee',
    'a person who has been forced to leave their country because of war, persecution, or natural disaster.',
    'The war created millions of refugees.',
  ),

  Word(
    1,
    'Tough',
    'difficult to deal with or overcome.',
    'It was a tough decision, but she knew it was the right one.',
  ),

  Word(
    1,
    'Crisis',
    'a time of great difficulty or danger.',
    'The company is facing a financial crisis.',
  ),

  Word(
    1,
    'Condition',
    'the state of something at a particular time.',
    'The patient is in critical condition.',
  ),
  Word(
    1,
    'Condition',
    'a stipulation or requirement.',
    'He got the job on the condition that he passed the probation period.',
  ),

  Word(
    1,
    'Arrival',
    'the act of someone or something arriving at a place.',
    'The arrival of the new baby brought joy to the family.',
  ),

  Word(
    1,
    'Departure',
    'the act of someone or something leaving a place.',
    'The plane\'s departure was delayed due to bad weather.',
  ),

  Word(
    1,
    'Shift',
    'a change in position or direction.',
    'There has been a shift in public opinion on the issue.',
  ),
  Word(
    1,
    'Shift',
    'a period of work done by a particular group of employees.',
    'She works the night shift at the hospital.',
  ),

  Word(
    1,
    'Background',
    'the knowledge, experience, or situation that provides a context for something.',
    'He has a strong background in engineering.',
  ),

  Word(
    1,
    'Recipe',
    'a set of instructions for preparing a particular dish.',
    'She followed her grandmother\'s recipe for chocolate chip cookies.',
  ),
// Existing Word ( 1,retrieved from previous interaction)

  Word(
    1,
    'Arrest',
    'the act of taking someone into legal custody, usually by law enforcement officers.',
    'The police arrested the suspect for breaking and entering.',
  ),

// New Words

  Word(
    1,
    'Instant',
    'a very short amount of time.',
    'The soup was ready in an instant.',
  ),
  Word(
    1,
    'Instant',
    'adjective: happening or done immediately.',
    'He made an instant decision to help the child.',
  ),

  Word(
    1,
    'Historical',
    'relating to or belonging to the past.',
    'The city has many historical buildings.',
  ),

  Word(
    1,
    'Attention',
    'notice taken of something.',
    'She paid close attention to the teacher\'s instructions.',
  ),

  Word(
    1,
    'Compensation',
    'something, such as money or payment, given in return for something else, especially for work or services performed.',
    'The employee received compensation for his overtime hours.',
  ),

  Word(
    1,
    'Supply',
    'a quantity of something that is available for use.',
    'The company is facing a shortage of supplies.',
  ),
  Word(
    1,
    'Supply',
    'verb: to provide something that is needed or wanted.',
    'The factory supplies car parts to major automakers.',
  ),
// New Words

  Word(
    1,
    'Meet',
    'to come into the presence of someone or something.',
    'I met my friend for coffee this morning.',
  ),

  Word(
    1,
    'Annoy',
    'to cause someone to feel slightly angry or frustrated.',
    'The constant noise was starting to annoy me.',
  ),

  Word(
    1,
    'Propose',
    'to suggest a plan or course of action for consideration.',
    'He proposed a new strategy for marketing the product.',
  ),

  Word(
    1,
    'Hide',
    'to put or keep something out of sight.',
    'She hid the birthday present behind her back.',
  ),

  Word(
    1,
    'Pretend',
    'to behave as if something is true, even though you know it is not.',
    'The children pretended to be pirates while playing in the park.',
  ),

  Word(
    1,
    'Forecast',
    'a prediction of the likely future weather conditions.',
    'The weather forecast predicts rain for tomorrow.',
  ),

  Word(
    1,
    'Prediction',
    'a statement about what will happen in the future.',
    'The scientist made a prediction about the effects of climate change.',
  ),

  Word(1, 'WPM', 'abbreviation for "words per minute',
      " used to measure typing speed."),

  Word(
    1,
    'Allocate',
    'to give or assign something to a particular person or purpose.',
    'The budget allocated \$1 million for the education program.',
  ),

  Word(
    1,
    'Promotion',
    'an act of raising someone to a higher position or rank.',
    'She received a promotion after two years with the company.',
  ),

  Word(
    1,
    'Limitation',
    'a restriction or boundary on what is possible.',
    'There are limitations to what technology can achieve.',
  ),

  Word(
    1,
    'Survive',
    'to continue to live or exist, especially after a difficult or dangerous experience.',
    'Many animals did not survive the harsh winter.',
  ),

  Word(
    1,
    'Lifestyle',
    'the way a person lives, especially as determined by their social status, cultural background, and personal habits.',
    'He enjoys a healthy lifestyle that includes regular exercise and a balanced diet.',
  ),

  Word(
    1,
    'Latest',
    'most recent in time.',
    'Have you read the latest news?',
  ),

  Word(
    1,
    'Crime',
    'an action or omission that constitutes an offense against the law.',
    'Theft is a crime punishable by law.',
  ),

  Word(
    1,
    'Report',
    'an official statement giving information about something that has happened.',
    'The police filed a report about the robbery.',
  ),
  Word(
    1,
    'Report',
    'verb: to give an account of something that has happened.',
    'She reported the problem to her manager.',
  ),
// Existing Word ( 1,retrieved from previous interaction)

// New Words
// ////Rest Room////
  Word(
    1,
    'Rest Room',
    'a room in a public building with toilets and sinks.',
    'Excuse me, where is the nearest rest room?',
  ),

// ////Procedure////
  Word(
    1,
    'Procedure',
    'a series of steps taken in a particular order to carry out an activity.',
    'The doctor explained the surgical procedure to the patient.',
  ),

// ////Subsidy////
  Word(
    1,
    'Subsidy',
    'a financial grant or payment made by the government to a business or industry.',
    'The government provides subsidies to farmers to help them offset the cost of production.',
  ),

// ////Several////
  Word(
    1,
    'Several',
    'more than two but not many.',
    'There were several people waiting in line.',
  ),

// ////Spam////
  Word(
    1,
    'Spam',
    'unsolicited electronic messages, typically of a commercial nature.',
    'I get so much spam in my inbox every day.',
  ),

// ////Schedule////
  Word(
    1,
    'Schedule',
    'a list of planned events or appointments.',
    'Can we schedule a meeting to discuss this further?',
  ),
  Word(
    1,
    'Schedule',
    'verb: to arrange something to happen at a particular time.',
    'The doctor scheduled the surgery for next week.',
  ),

// ////Investor////
  Word(
    1,
    'Investor',
    'a person who commits money to a business or project in hopes of making a profit.',
    'The company is looking for investors to fund its expansion.',
  ),

// ////Virtual////
  Word(
    1,
    'Virtual',
    'existing or occurring on a computer or network.',
    'We had a virtual meeting with our colleagues in another country.',
  ),

// ////Features////
  Word(
    1,
    'Features',
    'the distinctive characteristics of something.',
    'What are the new features of this software?',
  ),

// ////Procurement////
  Word(
    1,
    'Procurement',
    'the act of obtaining goods or services.',
    'The company is responsible for the procurement of office supplies.',
  ),

// ////Interfere////
  Word(
    1,
    'Interfere',
    'to prevent something from happening as expected or to make it difficult for something to be done successfully.',
    'Please don\'t interfere with the work in progress.',
  ),

// ////Discount////
  Word(
    1,
    'Discount',
    'a reduction in the price of something.',
    'I got a discount on my new laptop.',
  ),

// ////Side effects////
  Word(
    1,
    'Side effects',
    'unintended effects, typically negative, that may occur in addition to the intended effects of a drug or other treatment.',
    'Some medications can cause side effects such as nausea or dizziness.',
  ),

// ////Clone////
  Word(
    1,
    'Clone',
    'an organism that is an exact copy of another individual.',
    'Scientists are now able to clone sheep and other animals.',
  ),
  Word(
    1,
    'Clone',
    'verb: to create an identical copy of something.',
    'He cloned the document and sent it to his colleagues.',
  ),

// ////Showcase////
  Word(
    1,
    'Showcase',
    'a public display of something.',
    'The company is showcasing its new products at the trade show.',
  ),
  Word(
    1,
    'Showcase',
    'verb: to display something prominently.',
    'The museum showcases a collection of ancient artifacts.',
  ),

// ////Parenting////
  Word(
    1,
    'Parenting',
    'the act or process of raising a child.',
    'Parenting can be a challenging but rewarding experience.',
  ),

// ////Passion////
  Word(
    1,
    'Passion',
    'a strong and barely controllable emotion.',
    'She has a passion for music.',
  ),

// ////Sharp////
  Word(
    1,
    'Sharp',
    'having a thin cutting edge or point.',
    'Be careful, that knife is very sharp!',
  ),
  Word(
    1,
    'Sharp',
    'adjective ( 1,figurative): quick to understand things and learn.',
    'She is a very sharp student.',
  ),
  Word(1, "Rejection", "the act of refusing to accept or grant something",
      "He faced rejection from several universities before getting accepted."),
  Word(1, "Audience", "a group of listeners or spectators",
      "The comedian had a large audience at his show."),
  Word(1, "Stream", "a continuous flow of data",
      "We watched a live stream of the concert."),
  Word(1, "Access", "the ability to reach or use something",
      "She was denied access to the confidential documents."),
  Word(
      1,
      "Download",
      "to transfer a file from a remote server to a local computer",
      "I downloaded the software from the website."),
  Word(1, "Panic", "sudden fear that overwhelms someone",
      "The fire alarm caused panic among the people in the building."),
  Word(1, "Discussion", "a conversation in which people share their views",
      "We had a productive discussion about the project."),
  Word(1, "Administration", "the action of managing something",
      "The school administration is responsible for the well-being of the students."),
  Word(1, "Edit", "to make changes to something",
      "I edited the document before submitting it."),
  Word(1, "Priority", "something given special importance",
      "Finishing this project is a top priority."),
  Word(1, "Approval", "the act of sanctioning something",
      "The manager gave his approval for the new marketing campaign."),
  Word(1, "Commitment", "a promise to do something",
      "He showed great commitment to his work."),
  Word(
      1,
      "Campaign",
      "a series of activities designed to achieve a particular goal",
      "The company launched a marketing campaign to promote their new product."),
  Word(1, "Realize", "to understand or become aware of something",
      "She finally realized the importance of hard work."),
  Word(1, "Extension", "an addition or enlargement of something",
      "We requested an extension on the deadline for the project."),
  Word(1, "Founder", "the person who starts an organization or company",
      "Steve Jobs is considered one of the founders of Apple."),
  Word(1, "Vision", "the ability to think about or plan the future",
      "The company has a clear vision for its growth."),
  Word(1, "Generation", "a group of people born at about the same time",
      "This new technology is revolutionizing the younger generation."),
  Word(1, "Comment", "a statement expressing an opinion or remark",
      "She left a comment on the blog post."),
  Word(1, "Wrap-up", "a summary or conclusion",
      "Let's do a quick wrap-up of the meeting before we adjourn."),
  Word(1, "Terminal", "the endpoint of a system or process",
      "The bus station is the terminal for all incoming and outgoing buses."),
  Word(1, "Traditional", "of or relating to tradition",
      "We celebrate a traditional festival every year."),
  Word(1, "Revenue", "income generated from sales of goods or services",
      "The company's revenue has been increasing steadily."),
  Word(1, "Purchase", "the act of buying something",
      "We made a purchase online yesterday."),
  Word(
      1,
      "Rehabilitation",
      "the process of restoring someone to health or good condition",
      "The physical therapy program helped him with his rehabilitation."),
  Word(1, "Inauguration", "the formal introduction of something",
      "The inauguration of the new president will be held next week."),
  Word(
      1, "Begin", "to start or commence", "The class will begin at 9 o'clock."),
  Word(1, "Offer", "to present something for someone to accept or refuse",
      "The store is offering discounts on all their products."),
  Word(1, "Soft", "not hard or firm", "I prefer a soft mattress for sleeping."),
  Word(1, "Clam", "a bivalve mollusk with a hard shell",
      "We enjoyed fresh clams for dinner."),
  Word(1, "Asset", "something valuable that benefits someone",
      "A good education is a valuable asset."),
  Word(1, "Society", "people living together as a community",
      "A healthy society requires cooperation from everyone."),

  Word(1, "Natural/Nature", "existing in or produced by nature",
      "We hiked through a beautiful natural landscape."),
  Word(
      1,
      "Lap",
      "the part of the body formed by the thighs and the lower part of the abdomen when a person is sitting",
      "The cat curled up in my lap."),
  Word(1, "Digest", "to break down food in the stomach and intestines",
      "Our bodies need time to digest food properly."),
  Word(
      1,
      "Match maker",
      "someone who brings people together in romantic relationships",
      "The app is designed to work as a match maker for singles."),
  Word(1, "Cute", "attractive in a pretty or endearing way",
      "The baby's smile is absolutely cute."),
  Word(1, "Shortage", "a lack of something that is needed or wanted",
      "There is a shortage of qualified workers in this industry."),
  Word(1, "Nutrition", "the science of food and its relation to health",
      "Eating a balanced diet is essential for good nutrition."),
  Word(1, "Available", "that can be used or obtained",
      "The book is now available for purchase online."),
  Word(1, "Contract", "a formal agreement between two or more parties",
      "We signed a contract to sell our house."),
  Word(1, "Operation", "an action performed to achieve a particular purpose",
      "The doctor performed a successful surgery on the patient."),
  Word(1, "Permission", "authorization to do something",
      "She needed permission from her parents to go to the party."),
  Word(1, "Violation", "the act of breaking a law or rule",
      "Driving under the influence is a serious traffic violation."),
  Word(1, "High court", "a court of law that ranks below the supreme court",
      "The case was appealed to the high court."),
  Word(1, "Murder", "the unlawful premeditated killing of another human being",
      "Murder is a serious crime punishable by life imprisonment."),
  Word(1, "Remand", "to send someone back to prison to await trial",
      "The suspect was remanded in custody."),
  Word(1, "Routine", "a regular course of procedure",
      "Brushing your teeth twice a day is a healthy routine."),
  Word(1, "Proper", "correct or appropriate",
      "It's important to use proper grammar when writing an email."),
  Word(1, "Recover", "to regain health or possession of something lost",
      "He is slowly recovering from his illness."),
  Word(
      1,
      "Infection",
      "the invasion of an organism by a pathogen that causes disease",
      "A cold is a common respiratory infection."),
  Word(
      1,
      "Contagious",
      "capable of spreading from one person or animal to another",
      "The flu is a highly contagious disease."),
  Word(1, "Production", "the act of making or manufacturing something",
      "The factory increased its production of cars."),
  Word(1, "Audit", "a formal examination of financial records",
      "The company is undergoing an annual audit."),
  Word(1, "Supreme court", "the highest court in a country's legal system",
      "The Supreme Court has the power to review lower court decisions."),
  Word(1, "Ministry", "a government department headed by a minister",
      "The Ministry of Education is responsible for overseeing the education system."),
  Word(
      1,
      "Supporter",
      "someone who favors or advocates for a person, cause, or idea",
      "He is a strong supporter of environmental protection."),
  Word(1, "Tycoon", "a person who is very wealthy and successful in business",
      "The tech tycoon revolutionized the industry with his innovative ideas."),
  Word(
      1,
      "Laundering",
      "the process of illegally converting money gained from criminal activity into legitimate money",
      "Money laundering is a serious financial crime."),
  Word(1, "Saint", "a person recognized for great holiness and moral virtue",
      "Mother Teresa is considered a saint by many people."),
  Word(1, "Goods", "commodities that can be bought and sold",
      "The store sells a wide variety of goods."),
  Word(
      1,
      "Hearing",
      "a formal proceeding in which evidence is presented and arguments are heard",
      "The court will hold a hearing on the case next week."),
  Word(1, "Death Sentence", "the punishment of execution",
      "The jury found the defendant guilty and sentenced him to death."),
  Word(
      1,
      "Parlour", // Can also be spelled "Parlor"
      "a room used for conversation and socializing",
      "The family gathered in the parlour after dinner."),
  Word(1, "Boobs", "slang for a woman's breasts ( 1,informal)",
      "**Note:** This is an informal term. A more appropriate term would be 'breast'. "),
  Word(
      1,
      "Adulterate",
      "to make something poorer in quality by adding another substance",
      "The company was accused of adulterating their food products."),
  Word(1, "Disaster", "a sudden event that causes great damage or suffering",
      "The earthquake was a natural disaster that devastated the region."),
  Word(
      1,
      "Cyclone",
      "a large, destructive storm system with a low-pressure center and strong winds that rotate counterclockwise in the Northern Hemisphere ( 1,clockwise in the Southern Hemisphere)",
      "The island was hit by a powerful cyclone."),
  Word(
      1,
      "Satellite",
      "an artificial object that orbits the Earth or another planet",
      "Communication satellites allow us to connect with people around the world."),
  Word(
      1,
      "Nation",
      "a country or a large group of people with a common history, language, and culture",
      "The United Nations is an organization that promotes peace and cooperation between nations."),
  Word(
      1,
      "Agreement",
      "an arrangement or understanding between two or more parties",
      "We reached an agreement on the terms of the contract."),
  Word(1, "Contractor", "a person or company hired to perform a specific job",
      "The contractor built a new addition to our house."),
  Word(1, "Dealership", "a business that sells and services vehicles",
      "We bought our car from a local Toyota dealership."),
  Word(1, "Source", "the place from which something comes",
      "The internet is a vast source of information."),
  Word(1, "Exclusive", "available only to a particular person or group",
      "The club has an exclusive membership policy."),
  Word(1, "Natural", "existing in or produced by nature",
      "We hiked through a beautiful natural forest."),
  Word(1, "Value", "the importance, worth, or usefulness of something",
      "Education is a valuable asset."),
  Word(
      1,
      "Expert",
      "a person who has a great deal of knowledge or skill in a particular area",
      "She is an expert in the field of computer science."),
  Word(1, "Ego", "a person's sense of self-importance",
      "He has a very inflated ego."),
  Word(1, "Sense", "the ability to perceive something",
      "She has a good sense of humor."),
  Word(1, "Remember", "to keep something in mind",
      "Remember to turn off the lights when you leave."),
  Word(
      1,
      "Honour", // British spelling, "Honor" in American English
      "to respect someone or something",
      "We should always honour our promises."),
  Word(
      1,
      "Lightning",
      "a bright flash of light in the sky caused by a discharge of electricity between clouds or between a cloud and the ground",
      "The lightning struck a nearby tree."),
  Word(1, "Nightmare", "a frightening or unpleasant dream",
      "I had a nightmare about being chased by a monster."),
  Word(1, "Lonely", "feeling sad or isolated because you lack companionship",
      "He felt lonely after his friends moved away."),
  Word(1, "Series", "a number of things happening one after another",
      "We watched a series of documentaries about nature."),
  Word(1, "Share", "to give part of something to someone else",
      "She shared her lunch with her friend."),
  Word(1, "Election", "the process of choosing someone to hold a public office",
      "The presidential election will be held next year."),
  Word(1, "Newborn", "a baby that has just been born",
      "The parents welcomed their newborn baby into the world."),
  Word(
      1,
      "Antiseptic",
      "a substance that destroys or prevents the growth of microorganisms",
      "The doctor cleaned the wound with an antiseptic solution."),
  Word(1, "Conceive", "to become pregnant",
      "The couple is trying to conceive a child."),
  Word(1, "Garage", "a building attached to a house used for storing a car",
      "We parked the car in the garage."),
  Word(
      1,
      "Gang",
      "a group of people who associate together for criminal purposes",
      "The police are cracking down on gang activity in the city."),
  Word(1, "Sea beach", "the shore of the sea",
      "We spent the day relaxing on the beautiful sea beach."),
  Word(
      1,
      "Geography",
      "the study of the Earth's surface, its features, and its inhabitants",
      "Geography helps us understand the world around us."),
  Word(1, "Authentic", "genuine or real",
      "We enjoyed a delicious meal at an authentic Italian restaurant."),
  Word(
      1,
      "Evidence",
      "information that shows something is true or has happened",
      "The police are collecting evidence at the crime scene."),
  Word(1, "Participation", "the act of taking part in something",
      "Active participation in class is encouraged."),
  Word(1, "Address", "a set of numbers or letters that identifies a location",
      "What is your home address?"),
  Word(
      1,
      "Minister",
      "a member of a government who is in charge of a particular department",
      "The Minister of Education is responsible for overseeing the education system."),
  Word(
      1,
      "Native",
      "relating to the place where a person or plant or animal naturally lives or grows",
      "He is a native speaker of Spanish."),
  Word(1, "Original", "the first or earliest form of something",
      "The Mona Lisa is an original painting by Leonardo da Vinci."),
  Word(1, "Block", "to prevent someone or something from moving forward",
      "The road is blocked by construction."),
  Word(
      1,
      "Deficit",
      "the amount by which a country's spending exceeds its income",
      "The government is trying to reduce the budget deficit."),
  Word(
      1,
      "Nomination",
      "the act of naming someone for a particular position or honor",
      "She received a nomination for Best Actress."),
  Word(
      1,
      "Smuggler",
      "a person who illegally brings goods into or out of a country",
      "The smugglers were caught trying to bring drugs into the country."),
  Word(
      1,
      "Life",
      "the condition that distinguishes organisms from inorganic objects and dead organisms, being manifested by biological processes, such as signaling and self-sustaining processes",
      "Life is a precious gift."),
  Word(1, "Imprisonment", "the action of confining someone in a prison",
      "The criminal was sentenced to ten years of imprisonment."),
  Word(1, "Stigma", "a mark of disgrace associated with a person or thing",
      "There is still a stigma surrounding mental illness."),
  Word(1, "Workplace", "the place where someone works",
      "She maintains a clean and organized workspace in her workplace."),
  Word(1, "Fair", "just and equitable",
      "Everyone deserves to be treated fairly."),
  Word(1, "Mute", "unable to speak",
      "The child was born mute but learned to communicate through sign language."),
  Word(1, "Market", "a place where people buy and sell goods",
      "The farmer's market sells fresh local produce."),
  Word(1, "Coastal area", "the land along the edge of the sea",
      "We enjoyed a vacation in a beautiful coastal area."),
  Word(
      1,
      "Hatchery",
      "a place where eggs are hatched and young animals are raised",
      "The fish hatchery helps to restock the lakes and rivers."),
  Word(
      1,
      "Adultery",
      "voluntary sexual intercourse between a married person and someone other than their spouse",
      "Adultery is considered a serious offense in some cultures."),
  Word(1, "Livelihoods", "the means of earning a living",
      "Many people lost their livelihoods due to the pandemic."),
  Word(1, "Slim", "thin and slender", "She has a slim build."),
  Word(1, "Inspection", "a close examination",
      "The factory undergoes regular safety inspections."),
  Word(1, "Luck", "chance occurrence, especially when favorable",
      "She considers herself lucky to have found such a good job."),
  Word(1, "Conservation", "the protection of natural resources",
      "Conservation efforts are essential to protect endangered species."),
  Word(1, "Switch", "to change from one thing to another",
      "He switched careers from engineering to teaching."),
  Word(
      1,
      "Poison",
      "a substance that can kill or seriously harm a living organism",
      "It is important to store poison out of the reach of children."),
  Word(
      1,
      "Decentralization",
      "the act of giving more power to local authorities",
      "The government is considering decentralization to improve efficiency."),
  Word(1, "Facial", "relating to the face",
      "She received a facial treatment at the spa."),
  Word(1, "Frontline", "the leading position in a battle or conflict",
      "Healthcare workers are on the frontline of the fight against the pandemic."),
  Word(1, "Bestseller", "a book that sells a very large number of copies",
      "The novel became a bestseller after it was adapted into a movie."),
  Word(
      1,
      "Keto diet",
      "a high-fat, low-carbohydrate diet that involves drastically reducing carbohydrate intake and replacing it with fat",
      "The keto diet is a popular weight loss method, but it's important to consult with a doctor before starting."),
  Word(
      1,
      "Follower",
      "someone who supports a particular person, cause, or philosophy",
      "He has a large following on social media."),

  // Entertainment
  Word(1, "Celebrity", "a famous person",
      "The celebrity couple arrived at the event in style."),

  // Health
  Word(
      1,
      "Dengue",
      "a mosquito-borne viral infection that causes a severe flu-like illness",
      "Dengue fever is a serious health concern in tropical and subtropical regions."),

  // Motivation
  Word(
      1,
      "Reward",
      "something given in recognition of service, effort, or achievement",
      "She received a bonus as a reward for her hard work."),
  Word(1, "Award", "a prize or other mark of recognition for achievement",
      "The scientist won an award for her groundbreaking research."),

  // Communication
  Word(1, "Forward", "to send something on to another person or place",
      "She forwarded the email to her colleagues."),

  // Emotion
  Word(1, "Mood", "a temporary state of mind or feeling",
      "She was in a good mood after receiving the good news."),

  // Relationship
  Word(1, "Better half", "a playful term for one's spouse or partner",
      "My better half is a fantastic cook."),

  // Health
  Word(1, "Crash", "a sudden and dramatic decrease in something",
      "He experienced a sugar crash after eating too much candy."),

  // Technology
  Word(1, "Update", "to make something more modern or up-to-date",
      "It's important to update your software regularly."),

  // Food
  Word(1, "Grill", "to cook food over a direct heat source",
      "We grilled burgers and vegetables for dinner."),

  // Age
  Word(1, "Teen", "a young person between the ages of 13 and 19",
      "The teens were excited about going to the concert."),

  // Science
  Word(1, "Solar", "of or relating to the sun",
      "Solar energy is a renewable source of power."),

  // Society
  Word(1, "Change", "the act or process of becoming different",
      "The world is constantly undergoing change."),
  Word(
      1,
      "Climate",
      "the combination of weather conditions that prevail in an area in general or over a long period",
      "Climate change is a major environmental concern."),

  // Work
  Word(1, "Staff", "the employees of a company or organization",
      "The staff at the hotel were very friendly and helpful."),

  // Law
  Word(1, "Objection", "a statement that something is wrong or unacceptable",
      "The lawyer raised an objection to the judge's ruling."),

  // Math
  Word(
      1,
      "Parallel",
      "existing or done at the same time and without connection",
      "The two lines are parallel to each other."),

  // Time
  Word(1, "Simultaneously", "happening or done at the same time",
      "They both spoke simultaneously, making it hard to understand what they were saying."),

  // Business
  Word(1, "Superstore", "a very large self-service shop",
      "We went to the superstore to stock up on groceries."),

  // Age
  Word(
      1,
      "Adolescent",
      "a young person between the ages of 11 and 19 ( 1,similar to 'teen')",
      "Adolescence is a time of great physical and emotional change."),

  // Law
  Word(
      1,
      "Piracy",
      "the unauthorized use or reproduction of another person's work",
      "Software piracy is a serious crime."),
  // Age range
  Word(1, "Thirteen – Nineteen", "the teenage years",
      "Those years between thirteen and nineteen are a time of significant growth and change."),

  // Language
  Word(
      1,
      "Slang",
      "informal language that is not considered formal or standard",
      "Some slang words become so popular that they eventually enter the mainstream vocabulary."),

  // Religion
  Word(1, "Prayer", "a communication with a deity or a higher power",
      "She said a prayer before going to bed."),

  // Conflict
  Word(1, "Clash", "a disagreement or argument",
      "There was a clash of personalities between the two executives."),

  // Light
  Word(1, "Flash", "a sudden burst of bright light",
      "The camera captured the flash of lightning."),

  // Passage
  Word(1, "Tunnel", "an underground passage",
      "The train traveled through a long tunnel."),

  // Condition
  Word(1, "Waterlogged", "soaked through with water",
      "The basement became waterlogged after the heavy rain."),

  // Email
  Word(
      1,
      "BCC",
      "blind carbon copy ( 1,recipients on a BCC list do not appear to other recipients)",
      "She sent the email to her colleagues and included her manager on BCC."),

  // Memory
  Word(1, "Reminder", "something that helps you remember something",
      "Set a reminder on your phone so you don't forget your appointment."),

  // Emotion
  Word(1, "Irritate", "to annoy or make someone angry",
      "The constant noise was irritating."),

  // Event
  Word(1, "Gathering", "a group of people assembled for a particular purpose",
      "There was a large gathering of friends and family at the wedding."),

  // Clarity
  Word(1, "Straight forward", "easy to understand",
      "The instructions were clear and straightforward."),

  // Waste disposal ( 1,alternative phrasing recommended to avoid confusion)
  Word(1, "Dustbin ( 1,recommended)", "a container for rubbish",
      "Please throw away the banana peel in the dustbin."),
  // Instead of "Dust + bin"

  // Profession
  Word(
      1,
      "Chef",
      "a skilled cook who is typically the head cook in a restaurant",
      "The talented chef prepared a delicious meal."),

  // Location
  Word(1, "Graveyard", "a place where dead people are buried",
      "The old church had a graveyard next to it."),

  // Phrase ( 1,informal)
  Word(
      1,
      "Law and order",
      "a state of peace and order enforced by the police and courts",
      "They campaigned for a return to law and order in the city."),

  // Change
  Word(1, "Deteriorate", "to become worse in condition or quality",
      "The old building has deteriorated over time."),

  // Affection
  Word(
      1,
      "Kiss",
      "a pressing of the lips against another person or object as a sign of love, greeting, or respect",
      "They shared a kiss goodbye."),

  // Transportation
  Word(1, "Fly/Flying", "to travel through the air",
      "We are flying to Europe for vacation."),
  Word(1, "Mosquito", "a small flying insect that sucks blood",
      "Mosquitoes can carry diseases such as malaria."),

  // Tradition ( 1,can have negative connotations)
  Word(
      1,
      "Dowry",
      "the money, goods, or property that a bride's family gives to the bridegroom or his family on marriage",
      "The practice of dowry can be a burden on families."),

  // Competition
  Word(1, "Contest", "a competition to decide the winner",
      "She entered the baking contest and won first prize."),
  // Entertainment
  Word(
      1,
      "Spoiler",
      "information that reveals the plot of a movie, book, or video game",
      "**Warning: Spoilers ahead!** Don't read this review if you haven't seen the movie yet."),

  // Behavior
  Word(
      1,
      "Bullying",
      "repeated aggressive behavior by someone in power towards a more vulnerable person",
      "Bullying is a serious problem that can have lasting negative effects on the victim."),
  Word(
      1,
      "Ragging", // Regionally Specific ( 1,Indian subcontinent)
      "a form of hazing or initiation ritual practiced in some educational institutions, often involving teasing or harassment",
      "Ragging is a banned practice in many educational institutions."),

  // Personality
  Word(1, "Arrogant", "having or showing an attitude of superiority",
      "He acted arrogantly as if he knew everything."),

  // Science
  Word(1, "Reproduction", "the process of producing offspring",
      "Sexual reproduction is the most common form of reproduction in animals."),

  // Technology ( 1,informal)
  Word(1, "Google it", "to search the internet for information using Google",
      "I'm not sure about that, but you can Google it to find out."),

  // Society
  Word(1, "Population", "all the people living in a particular area or country",
      "The world's population is constantly growing."),
  Word(
      1,
      "Minority",
      "a group of people that is smaller than another group within a population",
      "Ethnic minorities often face discrimination."),
  Word(1, "Majority", "the larger group in a population",
      "The majority of voters supported the candidate."),

  // Math/Probability
  Word(
      1,
      "Coincidence",
      "a seemingly chance occurrence of two or more things happening at the same time",
      "It was just a coincidence that we both wore the same shirt today."),

  // Emotion
  Word(1, "Doubt", "a feeling of uncertainty or lack of confidence",
      "She had doubts about her ability to succeed."),

  // Science
  Word(1, "Acidity", "the state of being acid",
      "The soil has a high level of acidity, which can harm some plants."),
  Word(
      1,
      "Palpitation",
      "a feeling of the heart beating rapidly or irregularly",
      "He experienced heart palpitations after drinking too much coffee."),

  // Family
  Word(1, "Paternal", "relating to a father",
      "The father showed great paternal love for his children."),
  Word(1, "Maternal", "relating to a mother",
      "The mother provided maternal care for her newborn baby."),

  // Anatomy
  Word(
      1,
      "Cleavage",
      "the separation of an egg or embryo into two or more cells,or the low-cut neckline of a garment", // Fashion context
      "The biologist studied the cleavage stage of the embryo. She wore a dress with a plunging cleavage."),

  // Behavior
  Word(
      1,
      "Informer",
      "someone who gives information to the authorities, especially secretly",
      "The police informant provided information about the criminal gang."),

  // Organization
  Word(1, "Category", "a group of things that are similar in some way",
      "This book store categorizes books by genre."),

  // Shape
  Word(1, "Circular", "round in shape", "The table has a circular top."),

  // Art
  Word(1, "Imitation", "the act of copying something",
      "His paintings are imitations of famous artists."),

  // Nature
  Word(1, "Landslide", "a large mass of earth or rock that slides down a slope",
      "The heavy rain caused a landslide that blocked the road."),

  // Informal
  Word(1, "Crazy", "informal: very foolish, strange, or wild",
      "That idea is crazy! It would never work."),

  // Object
  Word(
      1,
      "Wallet",
      "a small flat case that is used for carrying money, credit cards, etc.",
      "He forgot his wallet at home."),

  // Communication
  Word(
      1,
      "Propaganda",
      "information, especially biased or misleading information, used to promote or publicize a particular political cause or point of view",
      "The government used propaganda to win public support for the war."),

  // Religion ( 1,Islam)
  Word(1, "Halal", "permissible according to Islamic law",
      "Muslims are only allowed to eat halal food."),
  Word(1, "Haram", "forbidden according to Islamic law",
      "Alcohol is considered haram in Islam."),
  // Science
  Word(1, "Discovery", "the act of finding something new or previously unknown",
      "The discovery of penicillin revolutionized the treatment of bacterial infections."),

  // Science
  Word(1, "Invention", "the creation of something new",
      "The invention of the printing press had a major impact on the spread of knowledge."),

  // Animal behavior
  Word(
      1,
      "Hibernation",
      "a state of inactivity and lowered body temperature in animals during winter",
      "Bears hibernate during the winter months."),

  // Biology
  Word(1, "Hybrid", "the offspring of two different species or subspecies",
      "A mule is a hybrid of a horse and a donkey."),
  // Can also be used for cars ( 1,electric-gasoline)

  // Emotion
  Word(1, "Horror", "a feeling of fear or disgust",
      "The horror movie was too scary for me to watch."),

  // Physical fitness ( 1,informal)
  Word(1, "Six-pack", "informal term for well-defined abdominal muscles",
      "He trained hard to get a six-pack."),

  // Travel
  Word(1, "Route", "a course or way taken by someone or something",
      "We planned the route for our road trip."),
  Word(
      1,
      "Router",
      "a device that forwards data packets between computer networks",
      "The router is not working, so we can't connect to the internet."),

  // Emotion
  Word(1, "Sensitive", "easily offended, upset, or hurt",
      "She is a very sensitive person and takes criticism hard."),

  // Location
  Word(
      1,
      "Depot",
      "a place where goods are stored or from which they are distributed",
      "The bus depot is located downtown."),

  // Shape ( 1,informal)
  Word(1, "Zero figure", "informal term for a very slim body shape",
      "It's unhealthy to obsess over having a zero figure."),

  // Marketing
  Word(
      1,
      "Saturation",
      "the state of being completely full or covered with something",
      "The market is saturated with smartphones."),

  // Protest
  Word(
      1,
      "Boycott",
      "to refuse to buy or use the products or services of a company as a way of protesting",
      "People are boycotting the company in protest of its unfair labor practices."),

  // Waste disposal ( 1,informal)
  Word(1, "Trash", "informal term for rubbish or waste",
      "Please take out the trash."),

  // Art
  Word(1, "Animation", "the process of creating moving images",
      "Computer animation is used to create special effects in movies."),

  // Society
  Word(1, "Diversity", "the state of being different in some way",
      "The company is committed to promoting diversity in the workplace."),

  // Law
  Word(
      1,
      "Copyright",
      "the legal right to control the copying of an original work of authorship",
      "The copyright for this book belongs to the author."),

  // Emotion
  Word(1, "Uncertainty", "a lack of certainty or sureness",
      "There is a lot of uncertainty about the future of the economy."),

  // Profession
  Word(1, "Trouble shooter", "someone who identifies and solves problems",
      "The IT department sent a trouble shooter to fix my computer."),

  // Health
  Word(
      1,
      "Injury",
      "damage to the body caused by violence, accident, illness, or other external factors",
      "He suffered a serious injury in the car accident."),

  // Sports
  Word(
      1,
      "Marathon",
      "a long-distance running race of 42.195 kilometers ( 1,26.2 miles)",
      "She is training for her first marathon."),

  // Exclamation ( 1,informal)
  Word(1, "Holy moly", "informal expression of surprise or astonishment",
      "Holy moly! Did you see that meteor shower?"),

  // Movement
  Word(1, "Swing", "to move back and forth or from side to side",
      "The children were swinging on the swings in the playground."),

  // Fashion
  Word(1, "Trendy", "fashionable", "She always wears the trendiest clothes."),

  // Informal ( 1,positive connotation)
  Word(1, "Hottie", "informal term for someone who is attractive",
      "**Note:** This term can be considered subjective and suggestive. It's best to use it with caution."),

  // Informal term for spouse ( 1,often wife)
  Word(1, "Hubby", "informal term for husband",
      "**Note:** This term is informal and might not be appropriate in all situations."),

  // Academic ( 1,IELTS is a formal test)
  Word(
      1,
      "IELTS",
      "International English Language Testing System ( 1,a standardized test of English language proficiency)",
      "I am studying hard to improve my score on the IELTS exam."),

  // Positive emotion
  Word(
    1,
    "Congratulations",
    "an expression of pleasure or approval on account of something good that has happened to someone",
    "Congratulations on your graduation!",
  ),

  // Event
  Word(
    1,
    "Feast",
    "a large and elaborate meal",
    "We enjoyed a delicious feast at the wedding reception.",
  ),

  // Business ( 1,can be formal or informal)
  Word(
    1,
    "Mart",
    "a large self-service shop",
    "I went to the mart to buy groceries.",
  ),

  // Action
  Word(
    1,
    "Refuse",
    "to decline to do or accept something",
    "She politely refused the offer of dessert.",
  ),

  // Job
  Word(
    1,
    "Vacancy",
    "an unfilled position that is available to be applied for",
    "There is a vacancy for a marketing manager at the company.",
  ),

  // Body
  Word(
    1,
    "Sweat",
    "a salty liquid produced by the skin as a result of heat or exertion",
    "He was sweating profusely after running the marathon.",
  ),

  // Movement/Change
  Word(
    1,
    "Turning",
    "an act of changing direction",
    "He made a sharp turning at the corner.",
  ),

  // Law
  Word(
    1,
    "Immigration",
    "the action of coming to live permanently in a foreign country",
    "She went through a long process to apply for immigration to Canada.",
  ),

  // Travel
  Word(
    1,
    "Backpack",
    "a bag carried on the back with straps over the shoulders",
    "He packed his backpack for the camping trip.",
  ),

  // Abundance
  Word(
    1,
    "Overflow",
    "to be so full that liquid or other material runs out",
    "The river overflowed its banks after the heavy rain.",
  ),

  // Entertainment
  Word(
    1,
    "Web series",
    "a series of episodes of a television program delivered online",
    "I enjoyed watching the new web series on Netflix.",
  ),

  // Health
  Word(
    1,
    "Recover",
    "to return to good health or a normal condition after illness or injury",
    "It took her several weeks to recover from the surgery.",
  ),

  // Emotion
  Word(
    1,
    "Relief",
    "a feeling of happiness that comes from getting rid of worry, pain, or anxiety",
    "She felt a wave of relief when she heard that her exam results were good.",
  ),

  // Appearance ( 1,informal)
  Word(
    1,
    "Glamour",
    "glamorousness; exciting charm",
    "The Hollywood lifestyle is often portrayed as glamorous, but it's not all it's cracked up to be.",
  ),

  // Profession
  Word(
    1,
    "Detective",
    "a police officer who investigates crimes",
    "The detective is working on solving the mystery.",
  ),

  // Emotion
  Word(
    1,
    "Concern",
    "a feeling of worry about something",
    "She expressed her concern about the rising cost of living.",
  ),

  // Advice
  Word(
    1,
    "Recommendation",
    "a suggestion that something should be done",
    "The doctor gave me a recommendation for a good physiotherapist.",
  ),

  // Action
  Word(
    1,
    "Performance",
    "the way in which someone or something functions or operates",
    "The athlete gave a stellar performance at the competition.",
  ),

  // Evaluation ( 1,positive)
  Word(
    1,
    "Excellent",
    "extremely good",
    "She is an excellent student and always gets top marks.",
  ),

  // Success
  Word(
    1,
    "Achievement",
    "something that has been successfully accomplished",
    "Winning the gold medal was a great achievement for the athlete.",
  ),

  // Action
  Word(
    1,
    "Renew",
    "to make something new or fresh again",
    "She renewed her passport before her trip abroad.",
  ),
  // Belief
  Word(
      1,
      "Assumption",
      "a thing that is accepted as true or as likely to be true without proof",
      "It's a dangerous assumption to think that everyone will agree with you."),

  // Clothing
  Word(1, "Dressing", "the act of putting on clothes",
      "She spent a long time dressing for the occasion."),

  // Business
  Word(
      1,
      "Share market",
      "the market where stocks of companies are issued and traded ( 1,also called stock market)",
      "The share market is experiencing a boom."),

  // Personality
  Word(1, "Strict", "very demanding and careful about following rules",
      "The teacher was very strict about students being on time."),

  // Prediction
  Word(1, "Foresee", "to predict that something will happen in the future",
      "It's difficult to foresee the future of the economy."),

  // Perception
  Word(1, "View", "a way of considering something",
      "She has a positive view of the future."),

  // Action
  Word(
    1,
    "Repeat",
    "to say or do something again",
    "Please repeat your question.",
  ),

  // Subscription
  Word(
      1,
      "Subscribe",
      "to sign up to receive something regularly, such as a magazine or a service",
      "I subscribed to a streaming service to watch the new show."),

  // Power
  Word(1, "Authority", "the power to give orders and make decisions",
      "The teacher has the authority to discipline students who misbehave."),

  // Measurement
  Word(1, "Extreme", "very great or serious",
      "The weather conditions were extreme, with heavy rain and strong winds."),

  // Agreement
  Word(
      1,
      "Lease",
      "a formal agreement for the use of an asset ( 1,especially land or property) in return for payment over a fixed period",
      "We signed a lease for a new apartment."),

  // Finance
  Word(
      1,
      "Deposit",
      "money paid in advance, typically as a guarantee or part payment",
      "We paid a deposit to secure the hotel reservation."),

  // Crime
  Word(
      1,
      "Fraud",
      "deception deliberately practiced to secure unfair or unlawful gain",
      "The company was accused of fraud for misleading investors."),

  // Animal
  Word(
      1,
      "Insect",
      "a small invertebrate animal with six legs and three body parts ( 1,head, thorax, and abdomen)",
      "Mosquitoes are insects that can transmit diseases."),

  // Emotion
  Word(1, "Stress", "pressure or worry that can make you feel anxious or upset",
      "Work stress can have a negative impact on your health."),

  // Noun ( 1,related to home)
  Word(1, "Household", "all the people who live in a house together",
      "The whole household got sick with the flu."),

  // Action
  Word(1, "Initiative", "the ability to take action without needing to be told",
      "She showed great initiative by taking on the project herself."),

  // Communication
  Word(
      1,
      "Invitation",
      "an offer to someone to go somewhere or to do something",
      "We received an invitation to the wedding."),

  // Emotion
  Word(1, "Embarrassing", "causing someone to feel ashamed or awkward",
      "It was an embarrassing moment when I tripped and fell in public."),

  // Behavior
  Word(
      1,
      "Harass",
      "to constantly attack or annoy someone in a cruel or bullying way",
      "The child was being harassed by his classmates."),

  // Law
  Word(1, "Eviction", "the forced removal of a tenant from a rented property",
      "The family faced eviction after they were unable to pay the rent."),

  // Communication
  Word(
    1,
    "Threat",
    "a statement that something bad will happen to someone if they do not do something",
    "He received a threat from the kidnappers.",
  ),

// Verb
  Word(1, "Appear", "to come into sight",
      "The magician made the rabbit appear from his hat."),

  // Action
  Word(1, "Volunteer", "to offer to do something without being forced or paid",
      "She volunteered at the animal shelter on weekends."),

  // Help
  Word(1, "Guidance", "advice or instructions that help someone do something",
      "The teacher offered guidance to the students struggling with the assignment."),

  // Noun
  Word(1, "Waste", "material that is thrown away or useless",
      "We need to reduce our waste production."),

  // Noun ( 1,often negative)
  Word(1, "Mania", "an obsession or enthusiasm for something",
      "He has a mania for collecting coins."),

  // Adjective
  Word(1, "Haphazard", "done without much thought or care",
      "The room was in a haphazard state after the party."),

  // Adjective ( 1,positive)
  Word(1, "Decent", "adequate or satisfactory",
      "The hotel room was small but decent."),

  // Noun
  Word(1, "Wrinkle", "a small fold or crease in the skin or fabric",
      "She noticed a new wrinkle on her forehead."),

  // Verb
  Word(1, "Estimate", "to guess the size, amount, or cost of something",
      "It is difficult to estimate the cost of repairs without seeing the damage."),

  // Noun
  Word(
      1,
      "Hostage",
      "a person who is being held prisoner by someone who is demanding something",
      "The kidnappers took the child hostage."),

  // Noun
  Word(
      1,
      "Instruction",
      "an order or piece of advice telling someone what to do",
      "Follow the instructions carefully to assemble the furniture."),

  // Adjective
  Word(1, "Convenient", "easy or suitable to do or deal with",
      "The bus stop is conveniently located near my house."),

  // Noun
  Word(
      1,
      "Cotton",
      "a soft, white fiber that grows around the seeds of a cotton plant",
      "This T-shirt is made from soft cotton."),

  // Adjective
  Word(1, "Neat", "tidy and clean", "She keeps her desk neat and organized."),

  // Noun
  Word(
      1,
      "Highway",
      "a main road, especially one with several lanes that is used for long journeys",
      "We traveled for hours on the highway."),

  // Verb
  Word(1, "Scan", "to look at something carefully in order to find something",
      "The security guard scanned the passengers' luggage at the airport."),

  // Noun
  Word(1, "Explanation", "a statement that makes something clear",
      "The teacher provided a clear explanation of the concept."),
  // Action
  Word(
      1,
      "Distribute",
      "to give out or divide something among a number of people",
      "The charity distributed food and blankets to the homeless."),

  // Law
  Word(1, "Illegal", "forbidden by law",
      "It is illegal to download copyrighted music without permission."),

  // Emotion
  Word(1, "Greed", "a selfish desire for wealth or possessions",
      "The company's greed led them to exploit their workers."),

  // Adjective
  Word(1, "Comprehensive", "including all the relevant details",
      "The teacher provided a comprehensive explanation of the topic."),

  // Noun
  Word(
      1,
      "Guardian",
      "a person who is legally responsible for the care of a child",
      "Her parents are her guardians."),

  // Noun
  Word(
      1,
      "Nominee",
      "a person who is put forward as a candidate for a job, prize, or award",
      "She was nominated for the best actress award."),

  // Travel document
  Word(
      1,
      "VISA",
      "an official document that allows a person to enter, leave, or stay in a particular country",
      "She applied for a visa to travel to Europe."),

  // Noun
  Word(1, "Occasion", "a particular time at which something happens",
      "We celebrated her birthday on a special occasion."),

  // Adjective
  Word(1, "Needy", "in need of help, money, or other things",
      "The charity helps the needy in the community."),

  // Verb
  Word(
      1,
      "Insult",
      "to say or do something that is intended to hurt someone's feelings",
      "He accidentally insulted his boss with his comment."),

  // Idiom ( 1,remove as it's an idiom)
  // Word( 1,"Poke one's nose", "to interfere in something that is not one's business"),

  // Profession
  Word(1, "Trader", "a person who buys and sells goods",
      "The stock trader bought shares in the new company."),

  // Animal
  Word(1, "Bear", "a large, heavy mammal with thick fur",
      "Polar bears live in the Arctic."),

  // Difficulty
  Word(1, "Hardship", "a period of suffering or difficulty",
      "The family faced many hardships during the war."),

  // Emotion
  Word(
      1,
      "Tear",
      "a drop of salty liquid that comes from the eye when you are crying",
      "She wiped away a tear from her cheek."),

  // Emotion
  Word(1, "Fear", "a feeling of anxiety or dread caused by a threat",
      "The child was afraid of the dark."),

  // Event
  Word(1, "Outbreak", "a sudden start or increase of a disease",
      "There was an outbreak of the flu this winter."),

  // Adjective
  Word(1, "Intensive", "requiring a lot of effort, time, or concentration",
      "The athlete went through an intensive training program."),

  // Profession ( 1,often used for someone who helps a more senior person)
  Word(1, "Assistant", "a person who helps someone else with their work",
      "The doctor's assistant took my temperature."),

  // Adjective
  Word(
      1,
      "Short-sighted",
      "lacking foresight; unable to see the long-term consequences of one's actions",
      "It was a short-sighted decision to cut funding for education."),

  // Adjective
  Word(1, "Disposable", "intended to be thrown away after use",
      "We used disposable plates at the picnic."),
// Behavior
  Word(
      1,
      "Hypocrisy",
      "the behavior of acting in a way that contradicts one's stated beliefs or feelings",
      "The politician was accused of hypocrisy for campaigning against pollution while driving a gas-guzzling SUV."),

  // Action
  Word(1, "Preparation", "the act of making something ready for use or action",
      "She made careful preparations for her upcoming trip."),

  // Adjective
  Word(1, "Unfortunate", "happening by bad luck",
      "It was an unfortunate accident."),

  // Noun
  Word(
      1,
      "Quicksand",
      "loose sand that is saturated with water, so that it will sink objects that are placed on it",
      "The hiker got stuck in quicksand and had to be rescued."),

  // Noun
  Word(1, "Adventure", "an exciting or dangerous experience",
      "He went on an adventure to climb Mount Everest."),

  // Noun
  Word(
      1,
      "Legend",
      "a traditional story about events that may or may not have happened",
      "King Arthur and the Knights of the Round Table is a famous legend."),

  // Verb ( 1,informal)
  Word(1, "Swear", "to use swear words",
      "He stubbed his toe and swore in pain. **Note:** Swear words can be considered offensive in some contexts."),

  // Adjective
  Word(1, "Mysterious", "difficult to understand or explain",
      "The disappearance of the ship remains a mysterious event."),

  // Noun
  Word(
      1,
      "Venom",
      "a poisonous liquid that is produced by some animals, such as snakes and spiders",
      "A snakebite can be fatal if the victim is not treated for venom poisoning."),

  // Adjective
  Word(1, "Extraordinary", "exceptionally good or great",
      "She has an extraordinary talent for music."),

  // Noun
  Word(1, "Pioneer", "a person who is among the first to do something",
      "The Wright brothers were pioneers of aviation."),

  // Adjective ( 1,related to law)
  Word(1, "Forensic", "connected with the scientific examination of crimes",
      "Forensic science helps to solve crimes by analyzing evidence."),

  // Law
  Word(1, "Amendment", "a change made to a document",
      "The government proposed an amendment to the constitution."),

  // Biology
  Word(1, "Variation", "a slight difference from the typical form or standard",
      "There is a wide variation in the size and color of flowers."),

  // Prediction
  Word(1, "Foresight", "the ability to predict what will happen in the future",
      "A good leader needs to have foresight to make sound decisions."),

  // Art
  Word(1, "Masterpiece", "a work of art of outstanding quality",
      "The Mona Lisa is considered a masterpiece of Renaissance art."),

  // Adjective
  Word(1, "Fast", "moving or happening quickly",
      "The car was traveling at a fast speed."),

  // Business
  Word(
      1,
      "Brand",
      "a name or symbol used to identify a particular product or service",
      "Apple is a well-known brand for computers and smartphones."),

  // Adverb ( 1,emphasis)
  Word(1, "Absolutely", "completely; totally", "I absolutely agree with you."),

  // Adverb ( 1,emphasis)
  Word(1, "Exactly", "precisely; correctly",
      "That's exactly what I was thinking."),

  // Adjective
  Word(1, "Incredible", "difficult to believe; amazing",
      "The view from the top of the mountain was incredible."),

  // Noun ( 1,music)
  Word(1, "Digital Single", "a single song released in digital format",
      "The band released their new song as a digital single before their album came out."),

  // Profession ( 1,informal)
  Word(1, "Lance", "a freelance worker",
      "He works as a freelance writer, also known as a lance."),
  Word(
      1,
      "Reflex Camera",
      "A camera that allows the photographer to view the image through the lens exactly as it will be captured on film or sensor.",
      "Before the rise of digital photography, reflex cameras were the most popular type of camera for serious photographers."),
  Word(
      1,
      "DSLR",
      "Digital Single-Lens Reflex camera. A type of digital camera that uses a mirror and prism system to allow the photographer to view the image through the lens.",
      "DSLR cameras offer more control and flexibility than point-and-shoot cameras, but they are also typically larger and more expensive."),
  Word(
      1,
      "Impressive",
      "Very good or striking; arousing admiration or respect.",
      "The gymnast's performance on the uneven bars was impressive."),
  Word(
      1,
      "Guarantee",
      "A promise or assurance that something will happen or be the case.",
      "The manufacturer offers a one-year guarantee on all their products."),
  Word(
      1,
      "Deadline",
      "The latest time or date by which something should be completed.",
      "I need to meet the deadline for my project by the end of the week."),
  Word(1, "Appetite", "A strong desire or craving for food.",
      "He had a healthy appetite after exercising all day."),
  Word(1, "Mash", "To crush or force something into a soft, shapeless mass.",
      "She mashed the potatoes to make mashed potatoes."),
  Word(
      1,
      "Curry",
      "A dish of meat, vegetables, or lentils cooked in a spicy sauce.",
      "We had a delicious chicken curry for dinner."),
  Word(1, "Dessert", "A sweet course served after a meal.",
      "We had chocolate cake for dessert."), // Corrected spelling
  Word(
      1,
      "Pillow",
      "A soft bag filled with feathers, down, or other material, used to support the head when lying down.",
      "I need a new pillow; my neck is hurting."),
  Word(1, "Refresh", "To make someone or something feel cool or more pleasant.",
      "A cold drink refreshed me on the hot day."),
  Word(1, "Brave", "Having or showing courage.",
      "The firefighter bravely entered the burning building to rescue the trapped family."),
  Word(
      1,
      "Martyr",
      "A person who is killed or suffers greatly for a cause they believe in.",
      "Many people consider Martin Luther King Jr. to be a martyr for civil rights."),
  Word(
      1,
      "Civilization",
      "A human society that has developed a high level of culture and social organization.",
      "The ancient Egyptians were one of the first civilizations."),
  Word(1, "Athletic", "Skilled in or relating to physical exercise or sports.",
      "She is a very athletic person and enjoys running and playing tennis."),
  Word(1, "Hotchpotch", "A mixture of different things.",
      "The stew was a hotchpotch of vegetables, meat, and potatoes."),
  Word(1, "Tourist", "A person who travels for pleasure.",
      "The city is popular with tourists from all over the world."),
  Word(1, "Residence", "The place where a person lives.",
      "She has lived in her current residence for over 20 years."),
  Word(1, "Range", "The extent or spread of something.",
      "The mountain range stretched for miles across the horizon."),
  Word(1, "Cope", "to deal with something difficult",
      "She learned to cope with the loss of her job by taking up yoga."),
  Word(
      1,
      "Sustainable",
      "able to be maintained at a certain level without permanently depleting resources",
      "Sustainable development aims to meet the needs of the present without compromising the ability of future generations to meet their own needs."),
  Word(
      1,
      "Development",
      "the process of something growing or changing gradually",
      "The development of new technologies has revolutionized the way we communicate."),
  Word(
      1,
      "Hug",
      "to hold someone close in your arms as a sign of affection or comfort",
      "She gave her friend a hug when she heard the bad news."),
  Word(1, "Luxury", "a state of great comfort and extravagance",
      "Living in a luxury apartment meant having access to a swimming pool and concierge service."),
  Word(
      1,
      "Model",
      "a person who poses for artists, photographers, or fashion designers",
      "She started her career as a fashion model but eventually became a successful businesswoman."),
  // Flirt can have a sexual connotation, so the sentence avoids it.
  Word(
      1,
      "Flirt",
      "to behave as if you are romantically or sexually attracted to someone, but not seriously",
      "He flirted with her at the party, but she wasn't interested."),
  // Pervert is a strong word, so the definition and sentence are more neutral.
  Word(
      1,
      "Pervert",
      "someone who has a sexual interest in things that are considered abnormal or unacceptable",
      "The criminal was known as a pervert who targeted children."),
  // Intercourse is a formal term for sexual activity, so replace with a more general term.
  Word(1, "Intercourse", "sexual intercourse",
      "**Note:** This word can be considered formal or clinical. Consider using a more general term depending on the context."),
  Word(
      1,
      "Menstruation",
      "the monthly discharge of blood and tissue from the lining of the uterus",
      "Menstruation is a natural part of a woman's reproductive cycle."),
  Word(1, "Duration", "the length of time that something lasts",
      "The duration of the flight was about 10 hours."),
  Word(
      1,
      "Kidding",
      "said to indicate that you are not serious or that you are joking",
      "Don't worry, I was just kidding when I said I was going to quit my job."),
  Word(
      1,
      "Adjust",
      "to change something slightly to make it fit better or work better",
      "She adjusted the straps of her backpack to make it more comfortable."),
  Word(1, "Dirty", "not clean",
      "Please wash your hands before you eat; they're dirty."),
  // Spitting can be considered rude in some cultures, so the sentence avoids encouraging it.
  Word(1, "Spit", "to force saliva out of your mouth",
      "Spitting is considered rude in many cultures."),
  Word(
      1,
      "Fart",
      "to expel gas from the anus, often with a noise ( 1,informal)",
      "He accidentally farted in the middle of the meeting. **Note:** This is an informal term."),
  Word(1, "Herbal", "relating to or made from herbs",
      "She took herbal tea to soothe her sore throat."),
  Word(1, "Hygienic", "clean and healthy",
      "It's important to practice good hygiene to prevent the spread of germs."),
  Word(
      1,
      "System",
      "a set of connected things or parts that work together as a whole",
      "The transportation system in this city is very efficient."),
  Word(1, "Implement", "to put something into action",
      "The government is planning to implement new policies to address climate change."),
  Word(
      1,
      "Tutorial",
      "a set of instructions that helps someone learn how to do something",
      "This video tutorial will show you how to use the new software."),
  Word(
      1,
      "Freelancer",
      "a self-employed person who works for different companies or organizations on a short-term basis",
      "She works as a freelance writer for several online publications."),
  Word(1, "Continue", "to go on doing something that has already begun",
      "Please continue writing your report."),
  Word(1, "Coordination", "the act of working together smoothly",
      "Good coordination is essential for a successful team."),
  Word(
      1,
      "Reservation",
      "an arrangement to keep something for someone, especially a seat on a plane or a room in a hotel",
      "We made a reservation at a restaurant for our anniversary dinner."),
  Word(
      1,
      "Registration",
      "the act of signing your name in a book or on a form to show that you are attending something or that you are a member of something",
      "Registration for the conference starts next week."),
  Word(1, "Semester", "half of an academic year at a school or university",
      "The course will be offered in the spring semester."),
  Word(
      1,
      "Resume",
      "a document that summarizes a person's work experience, skills, and education",
      "She updated her resume before applying for the new job."),
  Word(1, "Accuracy", "the quality of being correct or exact",
      "It's important to ensure the accuracy of your data before making any decisions."),
  Word(1, "Level", "a stage in a system or process",
      "We are currently at Level 3 of the lockdown restrictions."),

  Word(1, "Ordinary", "not special or different",
      "It was an ordinary day with nothing out of the usual routine."),
  Word(1, "Option", "a choice between two or more things",
      "We have two options for dinner tonight: pizza or pasta."),
  Word(1, "Hang", "to suspend something from above",
      "She hung the picture on the wall."),
  Word(1, "Bother", "to annoy or inconvenience someone",
      "Don't let the noise bother you; you'll get used to it."),
  Word(1, "Bypass", "to avoid something by going around it",
      "We bypassed the traffic jam by taking a back road."),
  Word(1, "Display", "to show something",
      "The museum display featured artifacts from ancient Egypt."),
  Word(
      1,
      "Warranty",
      "a guarantee that a product will be repaired or replaced if it breaks within a certain period of time",
      "The laptop comes with a one-year warranty."),
  Word(1, "Logo", "a symbol or emblem used by a company or organization",
      "The Nike swoosh is a well-recognized logo."),
  Word(
      1,
      "Phoenix",
      "a mythical bird that is said to rise from the ashes after it dies",
      "The company rose from the ashes like a phoenix after going bankrupt."),
  Word(1, "Wound", "an injury that damages the skin or other tissue",
      "He cleaned and bandaged the wound on his knee."),
  Word(
      1,
      "Mask",
      "a covering for the face that can be used for disguise, protection, or performance",
      "She wore a mask to protect herself from the dust."),
  Word(1, "Zone", "a specific area or place",
      "The city is divided into different zones, each with its own character."),
  Word(1, "Watch", "to look at someone or something carefully",
      "She watched the children playing in the park."),
  Word(1, "Specs", "informal term for eyeglasses",
      "I need to get a new pair of specs; I can't see very well anymore."),
  Word(1, "Band", "a group of musicians who play together",
      "My favorite band is playing at the concert hall this weekend."),
  Word(1, "Side effect", "an unintended effect of a medicine or treatment",
      "One of the side effects of this medication is drowsiness."),
  Word(1, "Nostalgia", "a sentimental longing for the past",
      "Looking at old photos filled him with nostalgia for his childhood days."),
  Word(1, "Accompany", "to go with someone or something somewhere",
      "She will accompany her brother to the doctor's appointment."),
  Word(1, "Rehearsal", "a practice session for a performance",
      "The actors had a final rehearsal before the opening night of the play."),
  Word(
      1,
      "Middleman",
      "an intermediary person or organization that connects buyers and sellers",
      "The used car dealership acted as a middleman in the sale of the vehicle."),
  Word(1, "Grocery", "a shop that sells food",
      "I need to go to the grocery store to buy some milk and bread."),
  Word(1, "Domestic", "related to the home or the running of a household",
      "She is responsible for the domestic chores, such as cooking and cleaning."),
  Word(1, "Cow fattening", "the process of raising cows for their meat",
      "Cow fattening is a major industry in some parts of the world."),
  Word(
      1,
      "Poultry",
      "domesticated birds kept for their eggs or meat, such as chickens, turkeys, and ducks",
      "We had roast chicken for dinner last night. Poultry is a good source of protein."),
  Word(1, "Red meat", "the meat of mammals, such as beef, lamb, and pork",
      "Red meat is a good source of iron, but it should be consumed in moderation."),
  Word(1, "Guaranty", "a guarantee ( 1,alternative spelling)",
      "The manufacturer offers a one-year guaranty on all their products."),
  Word(
      1,
      "Junk food",
      "unhealthy food that is high in calories, sugar, and fat",
      "It's important to limit your intake of junk food and eat a balanced diet."),
  Word(
      1,
      "Tip( 1,s)",
      "a small amount of money given to someone as a token of gratitude for a service",
      "Don't forget to leave a tip for the waiter after your meal."),
  // "Tip" can also mean a small piece of advice or information.  Sentence can be adjusted based on context.
  Word(1, "Tip", "a small piece of advice or information",
      "Here's a tip for baking cookies: don't overmix the dough."),
  Word(1, "Trick", "a clever or dishonest act or scheme",
      "The magician wowed the audience with his amazing tricks."),
  Word(1, "Utilize", "to use something to good effect",
      "The company is utilizing new technology to improve its products."),
  Word(
      1,
      "VC",
      "abbreviation for venture capital. Money invested in a business in exchange for an ownership stake",
      "The startup company is looking to raise VC funding to expand its operations."),
  Word(
      1,
      "Emergency",
      "a sudden, serious, unexpected situation requiring immediate action",
      "The fire department responded quickly to the emergency."),
  Word(
      1,
      "Zigzag",
      "to move in a series of sharp turns, first in one direction and then in another",
      "The car swerved and zigzagged across the road to avoid hitting the pothole."),
  Word(1, "Selection", "a choice of things from which to choose",
      "The store has a wide selection of clothes for all ages."),
  Word(1, "Complex", "difficult to understand or deal with",
      "The new tax laws are very complex."),
  Word(1, "Criminal", "a person who has committed a crime",
      "The police are searching for the criminal who robbed the bank."),
  Word(1, "Suddenly", "happening unexpectedly or without warning",
      "Suddenly, the lights went out in the entire building."),
  Word(
      1,
      "Sculpture",
      "a three-dimensional work of art created by carving, casting, or assembling materials",
      "The museum has a collection of sculptures from ancient Greece."),
  Word(1, "Replica", "an exact copy of something",
      "This painting is a replica of the Mona Lisa."),
  Word(
      1,
      "Old home",
      "A house or building that has been around for a long time",
      "They decided to renovate their old home instead of moving."),
  Word(
      1,
      "Orphanage",
      "A residential institution that provides care for orphans",
      "Many charities support orphanages around the world."),
  Word(1, "Courage", "The ability to do something that you are afraid of",
      "She showed great courage when she stood up to the bully."),
  Word(
      1,
      "Never mind",
      "a phrase used to say that you no longer need help or information",
      "I was going to ask for directions, but never mind, I figured it out."),
  Word(
      1,
      "Third gender",
      "A gender identity that is outside of the traditional male/female binary",
      "The concept of a third gender exists in many cultures around the world."),
  Word(1, "Master plan", "A comprehensive plan for achieving a goal",
      "The company has a master plan to expand its operations into new markets."),
  Word(
      1,
      "Dismiss",
      "to formally tell someone to leave a place or end their job",
      "The teacher dismissed the class after the lesson."),
  Word(1, "Restart", "to start something again",
      "I had to restart my computer because it froze."),
  Word(1, "Life hack", "A clever tip or strategy for making your life easier",
      "This life hack will help you save time on your morning routine."),
  Word(1, "Reveal", "to make something known that was previously hidden",
      "The witness finally revealed what they saw on the night of the crime."),
  Word(1, "Intimate", "closely connected; familiar",
      "They shared an intimate conversation about their hopes and dreams."),
  Word(1, "Recharge", "to regain energy",
      "I need to take a break and recharge before continuing with my work."),
  Word(1, "Romantic", "relating to love or romance",
      "They took a romantic walk on the beach at sunset."),
  Word(1, "Wild", "not controlled or tamed",
      "The children ran wild in the park."),
  Word(
      1,
      "Odour ( 1,alternative spelling of Odor) ",
      "a smell, especially an unpleasant one",
      "The strong odour from the garbage can made her wrinkle her nose."),
  Word(1, "Surprise", "an unexpected event that causes wonder or astonishment",
      "Her birthday party was a surprise for her."),
  Word(1, "Attempt", "to try to do something",
      "He attempted to climb the mountain, but had to turn back due to bad weather."),
  Word(1, "Seduce", "to attract someone sexually",
      "He tried to seduce her with his charm."),
  Word(1, "Fake", "not genuine or authentic",
      "The news article turned out to be a fake."),
  Word(1, "Provoke", "to cause someone to become angry or upset",
      "His rude comments provoked a fight."),
  Word(1, "Uncouth", "lacking good manners or social refinement",
      "He was criticized for his uncouth behavior at the formal event."),
  Word(1, "Layman", "a person who is not a professional in a particular field",
      "As a layman, I don't understand the technical details of the new law."),
  Word(
      1,
      "Status",
      "the position or condition of someone or something relative to others",
      "Her social media status update revealed she got a new job."),
  Word(
      1,
      "Gesture",
      "a movement of the body or part of the body used to express an idea or feeling",
      "She waved her hand in a gesture of goodbye."),
  Word(1, "Posture", "the way someone holds their body",
      "Good posture is important for maintaining good health."),
  Word(1, "Inside", "in or within a place or container",
      "The cat was hiding inside the box."),
  Word(1, "Popular", "liked or admired by many people",
      "This song is very popular with teenagers."),
  Word(1, "Mutual", "shared or experienced by two or more people",
      "There was a mutual respect between the two colleagues."),
  Word(1, "Dude", "informal term for a man", "Hey dude, how's it going?"),
  Word(
      1,
      "Buttocks",
      "the fleshy part of the human body at the back of the hips",
      "**Note:** This is a more formal term than some synonyms."),
  Word(1, "Fine", "satisfactory or acceptable",
      "Everything is fine, thank you for asking."),
  Word(1, "Flaw", "a weakness or imperfection",
      "Everyone has flaws, but it's important to learn from them."),
  Word(1, "Couple", "two people who are in a romantic relationship",
      "The happy couple danced the night away at their wedding."),
  Word(
      1,
      "Title",
      "the name given to a book, film, piece of music, or work of art",
      "The title of the novel is 'Pride and Prejudice'."),
  Word(1, "Principal", "the most important person in a school",
      "The principal addressed the students during the assembly."),
  Word(1, "Remove", "to take something away",
      "Please remove your shoes before entering the house."),
  Word(1, "Headline", "the main news story on a newspaper or website",
      "The headline of the newspaper read 'Breaking News: Economy Recovers'."),
  Word(1, "Underwear", "clothes worn under outer clothes, next to the skin",
      "Don't forget to pack your underwear for your trip."),
  Word(1, "Collection", "a group of things that are gathered together",
      "She has a large collection of antique dolls."),
  Word(
      1,
      "Folk",
      "of or relating to the ordinary people of a particular country or region",
      "Folk music is a traditional form of music passed down through generations."),
  Word(
      1,
      "Religion",
      "a set of beliefs concerning the cause, nature, and purpose of the universe, especially when considered as the creation of a superhuman agency or agencies, usually involving devotional and moral aspects",
      "Many religions teach about the importance of love and compassion."),
  Word(
      1,
      "Temple",
      "a building dedicated to a god or gods, used for worship and religious rituals",
      "The Parthenon is a famous temple in ancient Greece."),
  Word(1, "Alien", "from a foreign country",
      "He is an alien living and working in this country."),
  Word(
      1,
      "Mock",
      "to make fun of someone or something in a cruel or disrespectful way",
      "It's not nice to mock someone for their appearance."),
  Word(1, "Blame", "to hold someone responsible for something wrong",
      "Don't blame yourself for the accident; it wasn't your fault."),
  Word(
      1,
      "Trace",
      "a small amount of something that remains after the rest has gone",
      "The police are following a trace of blood evidence."),
  Word(1, "Opposition", "resistance or disagreement",
      "The new law faced strong opposition from the public."),
  Word(1, "Control", "the power to influence or direct people or things",
      "She is in control of her own destiny."),
  Word(
      1,
      "Punishment",
      "the action of inflicting suffering on someone as a penalty for a crime or wrong",
      "The punishment for stealing is a fine or jail time."),
  Word(
      1,
      "Rival",
      "a person or thing competing with another for the same objective or prize",
      "The two companies are rivals in the tech industry."),
  Word(1, "Suspend", "to temporarily stop something from happening",
      "The teacher suspended the student for bad behavior."),
  Word(
      1,
      "Human chain",
      "a line of people holding hands in protest or solidarity",
      "The activists formed a human chain to protest the destruction of the forest."),
  Word(1, "Toll", "a fee that is paid for using a road, bridge, or tunnel",
      "There is a toll booth on the highway ahead."),
  Word(
      1,
      "Delete",
      "to remove something from a computer or other electronic device",
      "I accidentally deleted the file, but I was able to recover it."),
  Word(1, "Stainless", "resistant to staining, rusting, or corroding",
      "Stainless steel is a popular material for cookware because it is durable and easy to clean."),
  Word(1, "Dinner", "the main meal of the day, eaten in the evening",
      "We are having pasta for dinner tonight."),
  Word(1, "Smell", "the ability to perceive odors",
      "She has a strong sense of smell and can detect even the faintest odors."),
  Word(
      1,
      "Sewerage",
      "a system of pipes and drains that carry waste water away from homes and businesses",
      "Proper sewage disposal is important for public health."),
  Word(
      1,
      "Drawn",
      "pulled or stretched in a particular direction/sketched or illustrated.",
      "The artist had drawn a beautiful portrait of her friend. ( 1,illustrating) ,The tired children were drawn to the comfortable sofa. ( 1,pulled)"),
  Word(1, "Description", "a detailed account of something",
      "The product description listed all the features and benefits of the item."),
  Word(1, "Readymade", "a work of art made from a manufactured object",
      "Marcel Duchamp is famous for his readymade sculptures, such as the 'Fountain' ( 1,a urinal)."),
  Word(1, "Capture", "to take or seize someone or something",
      "The police captured the bank robber after a chase."),
  Word(1, "Margin", "the space between the edge of something and another thing",
      "Leave a one-inch margin around the text on your document."),
  Word(
      1,
      "Sample",
      "a small amount of something that is used to represent a whole",
      "The scientist took a blood sample from the patient."),
  Word(
      1,
      "Hash tag",
      "a word or phrase preceded by a hash symbol ( 1,#) used on social media to identify messages on a specific topic",
      "Use the hashtag #climatechange to join the conversation about climate action."),
  Word(1, "Tag", "a label or keyword associated with something online",
      "You can also tag someone in a photo on social media to identify them."),
  Word(1, "Secret", "something that is kept hidden from others",
      "She kept her birthday wish a secret."),
  Word(
      1,
      "Diplomat",
      "an official sent by a country to represent it in its relations with other countries",
      "The diplomats met to discuss the peace treaty."),
  Word(1, "Agree", "to think or feel the same way as someone else",
      "We both agree that the movie was excellent."),
  Word(1, "Regional", "relating to a particular part of a country or the world",
      "The festival celebrates the regional cuisine of the south."),
  Word(
      1,
      "Criticize",
      "to express disapproval of someone or something by pointing out faults",
      "The critic criticized the actor's performance in the play."),
  Word(1, "Prize", "an award or reward",
      "The winner of the competition will receive a cash prize."),
  Word(1, "Count", "to determine the number of things in a group",
      "She counted ten apples in the basket."),
  Word(1, "Bumper", "a shock absorber at the front or rear of a vehicle",
      "The car's bumper was damaged in the accident."),
  Word(
      1,
      "Microcredit",
      "small loans given to poor people to help them start a business",
      "Microcredit programs can help alleviate poverty by empowering people to become self-employed."),
  Word(
      1,
      "Capital",
      "the city that is the seat of government of a country or state",
      "London is the capital of England."),
  Word(1, "Capital", "money used to start or run a business",
      "He needs to raise capital to invest in his new business."),
  Word(1, "Fluent", "able to speak or write a language easily and accurately",
      "She is fluent in Spanish and French."),
  Word(1, "Fertile", "able to produce many plants or crops",
      "The Nile River valley is known for its fertile soil."),
  Word(1, "Fragile", "easily broken or damaged",
      "Be careful, that vase is very fragile."),
  Word(1, "Suggestion", "an idea or proposal put forward for consideration",
      "She offered some suggestions for improvement on the project."),

  Word(1, "Mosque", "a Muslim place of worship",
      "The Taj Mahal is a famous mosque in India."),
  Word(
      1,
      "Earthquake",
      "a sudden and violent shaking of the ground, typically causing great destruction",
      "The earthquake caused widespread damage to buildings in the city."),
  Word(
      1,
      "Awareness",
      "knowledge or consciousness of a particular fact or situation",
      "Raising awareness about climate change is important to take action."),
  Word(1, "Distraction", "something that prevents someone from concentrating",
      "The loud noise was a distraction during the meeting."),
  Word(1, "Lift", "to move something from a lower to a higher position",
      "He lifted the box onto the shelf."),

  Word(1, "Manner", "a way of behaving", "He has a kind and polite manner."),
  Word(1, "Attitude", "a way of thinking or feeling about someone or something",
      "She has a positive attitude and always looks for the best in people."),
  Word(
      1,
      "Recruitment",
      "the process of finding people to work for a company or organization",
      "The company is holding a recruitment drive for new engineers."),
  Word(1, "Exploit", "to take unfair advantage of someone or something",
      "The company was accused of exploiting its workers by paying them low wages."),
  Word(1, "Defect", "a fault or weakness in something",
      "The car was recalled due to a safety defect."),
  Word(1, "Substitute", "a person or thing that takes the place of another",
      "The teacher found a substitute to cover her class while she was sick."),
  Word(1, "Ban", "an official prohibition of something",
      "Smoking is banned in public places in many countries."),
  Word(1, "Postpone", "to delay something until a later time",
      "We had to postpone the meeting due to bad weather."),
  Word(1, "Quit", "to stop doing something",
      "She decided to quit her job to pursue her dream of becoming a writer."),
  Word(
      1,
      "Sort",
      "to arrange things into groups according to a particular system",
      "Please sort the laundry into whites and colors."),
  Word(1, "Traveler", "a person who is journeying from one place to another",
      "The traveler explored the ancient ruins of the city."),
  Word(
    1,
    "Topless",
    "",
    "with the upper part of the body bare ( 1,especially of a woman)",
  ),

  Word(1, "Sabotage", "to deliberately damage or destroy something",
      "The workers threatened to sabotage the project if their demands were not met."),
  Word(1, "Riot", "a violent disturbance of the peace by a crowd",
      "The police were called to control the riot that broke out after the football match."),
  Word(1, "Grab", "to seize or take something suddenly",
      "He grabbed the child's hand to prevent them from running into the street."),
  Word(
      1,
      "Transit",
      "the process of transporting people or goods from one place to another",
      "Public transit is a convenient way to get around the city."),
  Word(1, "Super duper", "informal way of saying 'very'",
      "This cake is super duper delicious!"),
  Word(1, "Controversial", "causing or likely to cause public disagreement",
      "The new law is a very controversial topic."),
  Word(
      1,
      "Alternative",
      "a different choice that can be made instead of another",
      "Do you have any alternative suggestions for dinner?"),
  Word(1, "Isolation", "the state of being alone or separated from others",
      "Social isolation can have negative effects on mental health."),
  Word(
      1,
      "Incentive",
      "a thing that motivates or encourages someone to do something",
      "The company offered a financial incentive to employees who met their sales targets."),
  Word(1, "Assemble", "to gather people or things together in one place",
      "The team assembled in the conference room for the meeting."),
  Word(
      1,
      "Assembly",
      "a group of people gathered together for a particular purpose",
      "The school assembly was held to celebrate the graduation of the senior class."),
  Word(1, "Outlook", "a way of considering the future",
      "She has a positive outlook on life."),
  Word(1, "Additional", "extra or further",
      "I need some additional information before I can make a decision."),
  Word(1, "Thrill", "a feeling of excitement or exhilaration",
      "The roller coaster ride gave me a thrill."),
  Word(
      1,
      "Cuisine",
      "the style of cooking characteristic of a particular country or region",
      "I love trying new cuisines from around the world."),
  Word(1, "Bankrupt", "unable to pay your debts",
      "The company went bankrupt after a series of bad investments."),
  Word(1, "Outing", "a trip or excursion for pleasure",
      "We went on a family outing to the park."),
  Word(1, "Consumer", "a person who buys goods and services",
      "Consumers are becoming more aware of the environmental impact of their purchases."),
  Word(1, "Hangry", "informal term for bad or irritable mood caused by hunger",
      "I'm starting to get hangry; I need to eat something soon."),
  Word(1, "Geeks", "people who are very interested in computers and technology",
      "The geeks gathered at the convention to see the latest gadgets."),
  Word(1, "Appliances", "electrical devices used for household tasks",
      "Common appliances include refrigerators, washing machines, and ovens."),
  Word(1, "Fascination", "intense interest or attraction",
      "She has a fascination with ancient history."),
  Word(1, "Appeal", "the ability to attract interest or pleasure",
      "The new product has a wide appeal to different age groups."),
  Word(1, "Formal", "following accepted standards of etiquette and dress",
      "A formal event requires formal attire."),
  Word(
      1,
      "Allegation",
      "a claim that someone has done something wrong, without proof",
      "The allegations of corruption against the politician are being investigated."),
  Word(1, "Stamina", "physical or mental strength and endurance",
      "The athlete needed a lot of stamina to complete the marathon."),
  Word(1, "Scarcity", "a lack of something that is wanted or needed",
      "There is a scarcity of clean water in some parts of the world."),
  Word(
      1,
      "Discrimination",
      "the unjust or prejudicial treatment of different categories of people",
      "Discrimination based on race, religion, or gender is illegal."),
  Word(1, "Undermine", "to weaken or damage something",
      "The constant criticism undermined her confidence."),
  Word(1, "Accommodation", "a place to live, especially while traveling",
      "We booked our accommodation online before our trip."),
  Word(1, "Downtown", "the central business district of a city",
      "The shops and offices are located downtown."),
  Word(1, "Homebody", "a person who prefers to stay at home rather than go out",
      "She is a bit of a homebody and enjoys spending time reading and relaxing at home."),
  Word(1, "Catch up", "to reach the same level as someone or something else",
      "We met for coffee to catch up on each other's lives."),
  Word(1, "Encourage", "to give someone confidence or hope",
      "The teacher encouraged her students to never give up on their dreams."),
  Word(1, "Motivation", "the reason or desire for doing something",
      "What is your motivation for learning a new language?"),
  Word(1, "Contradictory", "providing opposite or conflicting information",
      "Her statements were contradictory, so it was difficult to know what to believe."),
  Word(1, "Outdated", "no longer modern or fashionable",
      "This computer software is outdated and needs to be upgraded."),
  Word(
      1,
      "Callous",
      "showing or feeling a lack of sympathy or concern for others",
      "His callous remarks hurt her feelings."),
  Word(1, "Prank", "a playful trick intended to make someone laugh",
      "The children played a prank on their teacher by hiding her stapler."),
  Word(1, "Condemn", "to express strong disapproval of something",
      "The human rights group condemned the violence against civilians."),
  Word(
      1,
      "Escape",
      "to get away from a place or situation that you are confined in",
      "The prisoner made a daring escape from jail."),
  Word(1, "Shoplifting", "the crime of stealing goods from a shop",
      "Shoplifting is a petty crime that can result in a fine or jail time."),
  Word(1, "Frequently", "happening often or regularly",
      "She frequently visits her grandparents at the retirement home."),
  Word(
      1,
      "Buffering",
      "a temporary pause in the transmission of a video or audio stream",
      "The video is buffering because of the slow internet connection."),
  Word(
      1,
      "Inventory",
      "a complete list of items that are in stock at a business",
      "The store is taking inventory to see what needs to be restocked."),
  Word(1, "Parcel", "a package sent by post",
      "I am expecting a parcel containing my new book today."),
  Word(1, "Cash out", "to exchange casino chips or tokens for money",
      "He cashed out his winnings and left the casino."),
  Word(1, "Cash out", "to end a financial transaction and receive payment",
      "I need to cash out before the grocery store closes."),
  Word(1, "Root cause", "the underlying reason for a problem",
      "Poverty is often the root cause of crime."),
  Word(1, "Poverty", "the state of being extremely poor",
      "Many families are struggling with poverty due to the economic crisis."),
  Word(
      1,
      "Boycott",
      "to refuse to buy or use goods or services from a company as a protest",
      "Consumers are boycotting the company because of its poor environmental practices."),
  Word(1, "Restriction", "a rule or limitation that restricts something",
      "There are age restrictions for watching this movie."),
  Word(1, "Fiancée", "a woman who is engaged to be married",
      "His fiancée helped him plan his surprise birthday party."),
  Word(1, "Footage", "a length of film or video recording",
      "The police are reviewing security footage from the crime scene."),
  Word(
      1,
      "Accuse",
      "to say that someone has done something wrong, especially without proof",
      "He was accused of cheating on the exam, but he denied it."),
  Word(
      1,
      "Grassroots",
      "of or relating to the ordinary people in a community, rather than to those in authority",
      "The grassroots movement is working to raise awareness about climate change."),
  Word(1, "E-learning", "learning that takes place online",
      "E-learning allows students to take courses at their own pace and convenience."),
  Word(1, "Netizen", "a person who actively participates in online communities",
      "Netizens are using social media to speak out against social injustice."),
  Word(1, "Webinar", "a seminar or presentation that is held online",
      "I am attending a webinar on how to start a business."),
  Word(1, "Hype", "exaggerated publicity or promotion",
      "There is a lot of hype surrounding the new product, but it may not live up to the expectations."),
  Word(1, "Dire", "extremely serious or urgent",
      "The situation is dire, and we need to take action immediately."),
  Word(
      1,
      "Meme",
      "an image, video, or piece of text that is rapidly shared online and often altered in a creative or humorous way",
      "The cat video went viral and became a popular meme."),
  Word(1, "Killjoy", "a person who spoils the pleasure of others",
      "Don't be a killjoy, let's have some fun!"),
  Word(1, "Loser", " misspelling of  Loser",
      "He felt like a loser after losing the game."),
  Word(1, "Loser", "a person who is unsuccessful in a competition or fight",
      "The team that scores the fewest points is the loser."),
  Word(1, "Decline", "to gradually become worse or smaller",
      "The use of landlines has declined since the rise of mobile phones."),
  Word(1, "Dumped", "to end a romantic relationship with someone",
      "She was dumped by her boyfriend after a year of dating."),
  Word(1, "Netiquette", "etiquette for online communication",
      "It's important to follow netiquette when posting on social media."),
  Word(
      1,
      "Navigation",
      "the process of planning and carrying out a journey from one place to another",
      "The GPS system provides navigation assistance for drivers."),
  Word(
      1,
      "Drive-in",
      "a restaurant or theater where customers can be served while parked in their cars",
      "We went to a drive-in movie last night."),
  Word(
      1,
      "Deep fake",
      "a realistic-looking video that has been artificially created using artificial intelligence",
      "Deepfakes can be used to spread misinformation."),
  Word(1, "E-waste", "electronic waste",
      "E-waste is a growing environmental problem."),
  Word(1, "Tribute", "an act or statement of respect or admiration",
      "The concert was a tribute to the late musician."),
  Word(
      1,
      "Patient zero",
      "the first person identified to be infected with a contagious disease in an outbreak",
      "Patient zero for the COVID-19 pandemic is believed to be from Wuhan, China."),
  Word(
      1,
      "Social distancing",
      "maintaining a safe distance from others to prevent the spread of a contagious disease",
      "Social distancing is an important measure to slow the spread of COVID-19."),
  Word(1, "Droplet", "a small drop of liquid",
      "Respiratory droplets can spread viruses when an infected person coughs or sneezes."),
  Word(
      1,
      "Transactions",
      "the act of exchanging something, such as money or goods, for something else",
      "Online transactions are becoming increasingly common."),
  Word(
      1,
      "Cryptocurrency",
      "a digital currency that uses cryptography for security",
      "Bitcoin is the most well-known cryptocurrency."),
  Word(1, "Unlock", "to open something that is locked",
      "She unlocked the door with her key."),
  Word(
      1,
      "Milestone",
      "an important stage or event in the development of something",
      "Graduation is a major milestone in a person's life."),
  Word(1, "Critic", "a person who expresses disapproval of something",
      "The film received mixed reviews from critics."),
  Word(1, "Usage", "the act or way of using something",
      "The correct usage of the word 'affect' versus 'effect' can be confusing."),
  Word(1, "Celebration", "an activity or event expressing joy or happiness",
      "There were celebrations in the street after the team won the championship."),
  Word(1, "Triumph", "a great victory or success",
      "The team's triumph over their rivals was a major upset."),
  Word(1, "Argument", "a disagreement or heated discussion",
      "They got into an argument about politics."),

  Word(
      1,
      "Blame game",
      "a situation in which different individuals or groups attempt to assign blame to each other for a problem or failure",
      "Instead of playing the blame game, let's focus on finding a solution."),
  Word(1, "Shortcoming", "a weakness or failing",
      "One of the shortcomings of this plan is that it does not consider the costs involved."),
  Word(1, "Vulnerable", "easily hurt, wounded, or attacked",
      "The elderly are a vulnerable population who need our protection."),
  Word(
      1,
      "Hotspot",
      "a place where something, such as a disease or crime, is very common",
      "This neighborhood is a hotspot for gang activity."),
  Word(1, "Adapt", "to change to fit new conditions",
      "Many animals have adapted to survive in harsh environments."),
  Word(1, "Declaration", "a formal statement announcing something",
      "The Declaration of Independence is the founding document of the United States."),
  Word(
      1,
      "Fall semester",
      "the first semester of the academic year at a school or university",
      "Classes typically begin in the fall semester."),
  Word(1, "Withdrawal", "the act of taking something back",
      "The athlete announced his withdrawal from the competition due to injury."),
  Word(
      1,
      "Withdrawal",
      "the act of removing yourself from a place or situation",
      "She made a sudden withdrawal from the party without saying goodbye."),
  Word(1, "Encounter", "to meet someone or something unexpectedly",
      "We encountered a group of hikers on the trail."),
  Word(1, "Revive", "to bring something back to life or activity",
      "The old tradition was revived after many years."),
  Word(1, "Escalate", "to become more serious or intense",
      "The situation escalated into a violent conflict."),
  Word(1, "Super cool", "informal way of saying 'very cool'",
      "That new gadget is super cool!"),
  Word(1, "Destination", "the place to which a person or thing is going",
      "Our final destination is the beach."),
  Word(
      1,
      "Influencer",
      "a person who uses social media to promote brands or products to their audience",
      "Many fashion influencers promote clothing brands on Instagram."),
  Word(1, "Pledge", "a solemn promise or declaration",
      "The students pledged to uphold the honor code."),
  Word(1, "Next tomorrow", "the day after tomorrow",
      "We are leaving for our trip next tomorrow."),
  Word(1, "Outfit", "a set of clothes worn together",
      "She wore a stylish outfit to the wedding."),
  Word(
      1,
      "Trendsetter",
      "a person who sets or influences the latest fashion or style",
      "This celebrity is known for being a trendsetter."),
  Word(1, "Vigilant", "carefully watchful or aware of danger",
      "The guard dog remained vigilant throughout the night."),
  Word(1, "Sophisticate", "a person who is worldly and elegant",
      "The city is known for its sophisticated culture."),
  Word(
      1,
      "Grooming",
      "the act of cleaning and caring for one's hair, skin, and nails",
      "Good grooming habits are important for a professional appearance."),
  Word(
      1,
      "CEO",
      "Chief Executive Officer; the highest-ranking executive of a company",
      "The CEO announced the company's plans for expansion."),
  Word(1, "Centenary", "the 100th anniversary of something",
      "The city is celebrating its centenary this year."),
  Word(
      1,
      "Destiny",
      "the events that will happen to a particular person or thing in the future",
      "Some people believe that destiny is predetermined, while others believe in free will."),
  Word(1, "Glow", "a soft, warm light",
      "The fireflies emitted a soft glow in the night."),
  Word(1, "Glow", "a feeling of happiness or satisfaction",
      "Her face glowed with pride after her son's graduation."),
  Word(
      1,
      "Early bird",
      "someone who gets up early in the morning The early bird gets the worm,",
      " the first person to take action will be successful)"),
  Word(1, "Jabs", "short injections, especially to vaccinate someone",
      "Many countries are encouraging citizens to get their COVID-19 jabs."),
  Word(1, "Makeshift", "temporary and not made in the usual way",
      "They built a makeshift shelter out of blankets and wood."),
  Word(1, "Command", "an order to do something",
      "The captain gave the command to set sail."),
  Word(1, "Command", "to be in control of something",
      "She commands a lot of respect from her colleagues."),
  Word(1, "Exceptional", "extremely good or impressive",
      "The athlete gave an exceptional performance at the competition."),
  Word(
      1,
      "Game changer",
      "something that has a significant impact and changes the way things are done",
      "The invention of the internet was a game changer for communication."),
  Word(
      1,
      "Displacement",
      "the act of moving something or someone from their usual place",
      "The earthquake caused widespread displacement of people from their homes."),
  Word(1, "Divert", "to change the direction of something",
      "The police diverted traffic away from the accident scene."),
  Word(
      1,
      "Ride-sharing",
      "a service that allows people to share rides with others for a fee",
      "Ride-sharing apps like Uber and Lyft are becoming increasingly popular."),
  Word(1, "Devastation", "great destruction or damage",
      "The hurricane caused widespread devastation in the coastal towns."),
  Word(1, "Rescue", "to save someone or something from danger or harm",
      "The firefighters successfully rescued the family from the burning building."),
  Word(1, "Rapid", "happening or developing very quickly",
      "The spread of the virus was rapid and caused a lot of concern."),
  Word(
      1,
      "Symptom",
      "a physical or mental change that indicates the presence of a disease",
      "A fever and cough are common symptoms of the flu."),
  Word(1, "No way", "used to express strong disagreement or refusal",
      "No way am I going to eat that!"),
  Word(1, "Call out", "to criticize someone publicly for their wrong behavior",
      "The activist called out the company for its environmental practices."),
  Word(1, "Response", "an answer or reaction to something",
      "The government's response to the crisis was slow and ineffective."),
  Word(1, "Curiosity", "a strong desire to know or learn something",
      "The child's curiosity led her to explore the attic."),
  Word(1, "Ancestor", "a person from whom you are descended",
      "She is researching her ancestors to learn more about her family history."),
  Word(
      1,
      "Countdown",
      "the counting down of the time remaining until something happens",
      "The countdown to the launch of the rocket has begun."),
  Word(1, "Snoop", "to look into something secretly or without permission",
      "She was caught snooping through her brother's room."),
  Word(
      1,
      "Scandal",
      "a situation that is shocking and embarrassing and that is made public",
      "The political scandal led to the resignation of the minister."),
  Word(1, "Revelations", "new information that is surprising or shocking",
      "The investigation revealed shocking revelations about the company's practices."),
  Word(
      1,
      "Move on",
      "to continue living your life after a difficult experience",
      "It's important to move on after a breakup."),
  Word(1, "Dispute", "a disagreement or argument",
      "There is a dispute between the two companies over the contract."),
  Word(
      1,
      "Debut",
      "the first public appearance or performance of someone or something",
      "The singer's debut album was a huge success."),
  Word(1, "Departed soul", "a euphemism for a person who has died",
      "We will always cherish the memory of our departed soul."),
  Word(
      1,
      "Condolence message",
      "a message expressing sympathy to someone who has died",
      "She sent a condolence message to the bereaved family."),
  Word(1, "Bereaved family", "a family who has lost a loved one",
      "The community rallied around the bereaved family to offer their support."),
  Word(1, "Funeral", "a ceremony held after someone's death",
      "The funeral will be held next week at the church."),
  Word(1, "Neighbor", "a person who lives next door to you",
      "My neighbor is a kind old lady who always looks out for me."),
  Word(
    1,
    "Until my last breath",
    "a metaphorical expression meaning 'for as long as I live'",
    "I will love you until my last breath.",
  ),
  Word(
      1,
      "Fan base",
      "a group of people who are enthusiastic supporters of a person or thing",
      "The band has a large and dedicated fan base."),
  Word(1, "Confess", "to admit to doing something wrong",
      "The criminal finally confessed to his crimes."),
  Word(1, "Survivor", "a person who survives a dangerous situation or illness",
      "The plane crash survivors were rescued from the mountains."),
  Word(1, "Extraction", "the act of removing something",
      "The rescue team carried out a daring extraction of the hostages."),
  Word(
      1,
      "Assassin",
      "a person who murders someone for political or financial reasons",
      "The king was killed by an assassin."),
  Word(1, "Uprising", "a violent rebellion against an authority or government",
      "The people rose up in an uprising against the dictator."),
  Word(
      1,
      "Shoot on sight",
      "an order to shoot someone as soon as they are seen",
      "The security forces were given a shoot on sight order for any intruders."),
  Word(1, "Soulful", "expressing deep emotion",
      "The singer has a soulful voice that can move you to tears."),
  Word(
      1,
      "Eligible",
      "having the qualifications to be considered for something",
      "She is not eligible to vote because she is not yet 18."),
  Word(1, "Suspect", "a person believed to be responsible for a crime",
      "The police are questioning several suspects."),
  Word(1, "Spare", "to avoid harming or killing someone",
      "The soldier spared the life of the enemy soldier."),
  Word(
      1,
      "Affordable",
      "able to be afforded; having a cost that is not too high",
      "These apartments are affordable for young professionals."),
  Word(1, "Back and forth", "happening repeatedly in two opposite directions",
      "The kids were running back and forth in the playground."),
  Word(1, "Replicate", "to copy something exactly",
      "Scientists are trying to replicate the experiment."),
  Word(
      1,
      "Temptation",
      "a desire to do something that you know is wrong or unwise",
      "She resisted the temptation to eat the entire cake."),
  Word(1, "Transmission", "the act or process of transmitting something",
      "The transmission of diseases can be prevented through good hygiene."),
  Word(
      1,
      "Nepotism",
      "the practice of giving jobs or favors to family members or friends, especially instead of to people who are better qualified",
      "The company was accused of nepotism in its hiring practices."),
  Word(1, "Rhythm", "a regular repeated pattern of movement or sound",
      "The music had a strong, driving rhythm."),
  Word(1, "Peer pressure", "pressure from friends or equals to do something",
      "He felt peer pressure to join the gang."),
  Word(
      1,
      "Pretend",
      "to behave as if something is true although you know it is not",
      "The children were pretending to be pirates."),
  Word(1, "Merchandise", "goods that are bought and sold",
      "The store sells a wide variety of merchandise."),
  Word(1, "Pronunciation", "the way a word or phrase is spoken",
      "The pronunciation of this word can be tricky."),
  Word(1, "Harmony", "a pleasing arrangement of different parts",
      "The choir sang in perfect harmony."),
  Word(
      1,
      "Blacklist",
      "a list of people or organizations that are banned or disapproved of",
      "The company blacklisted him after he violated their terms of service."),
  Word(1, "Evacuate", "to remove people from a dangerous place",
      "The city was evacuated due to the approaching hurricane."),
  Word(1, "Symbol", "a thing that represents or stands for something else",
      "The dove is a symbol of peace."),
  Word(1, "Safeguard", "to protect something from harm",
      "We need to safeguard our environment for future generations."),
  Word(1, "Wildfire", "an uncontrolled fire that burns in the wilderness",
      "Wildfires can cause widespread devastation."),
  Word(1, "Nuance", "a subtle difference in meaning or expression",
      "The author's writing is full of nuance and complexity."),
  Word(1, "Subtle", "difficult to notice or detect",
      "There was a subtle change in her expression."),
  Word(
      1,
      "Last but not least",
      "an expression used to introduce the final item in a list, but emphasizing its importance",
      "We visited the museum, the art gallery, and last but not least, the delicious French bakery."),
  Word(1, "Lavish", "expensive and luxurious",
      "They threw a lavish party to celebrate their wedding."),
  Word(1, "Sneak peek", "a brief preview of something that is coming soon",
      "We got a sneak peek of the new movie trailer."),
  Word(1, "Damage", "physical harm that is caused to something",
      "The storm caused a lot of damage to the buildings."),
  Word(
      1,
      "Iota",
      "the smallest letter in the Greek alphabet, used to indicate a very small amount",
      "There isn't an iota of truth to those rumors."),
  Word(1, "Complain", "to express dissatisfaction or annoyance about something",
      "The customer complained about the long wait time."),
  Word(1, "Roll out", "to introduce something new on a large scale",
      "The company is rolling out its new product line this month."),
  Word(1, "Tranquilizer", "a drug that has a calming effect",
      "The vet gave the anxious dog a tranquilizer before the surgery."),
  Word(1, "Take a dig at", "to make a veiled criticism of someone or something",
      "The comedian took a dig at the politician's hairstyle during his routine."),
  Word(1, "Mandate", "an official order or command",
      "The government issued a mask mandate to slow the spread of the virus."),
  Word(1, "Messy", "not neat or tidy",
      "My room is a mess after I finished working on my project."),
  Word(
      1,
      "Debris",
      "the scattered remains of something that has been destroyed",
      "The streets were littered with debris after the tornado."),
  Word(1, "Expedite", "to speed up the progress of something",
      "We need to expedite the delivery of these medical supplies."),
  Word(1, "Contamination", "the act of making something dirty or impure",
      "The food was recalled due to contamination with bacteria."),
  Word(1, "Crucial", "extremely important",
      "It is crucial to get enough sleep for good health."),
  Word(1, "Relevant", "related to a particular subject or situation",
      "The teacher asked the students to stay on topic and only discuss relevant information."),
  Word(1, "Wildlife", "the animals that live in a particular area",
      "The national park is home to a variety of wildlife."),
  Word(1, "Surpass", "to be better than someone or something else",
      "Her athletic performance surpassed all expectations."),
  Word(
      1,
      "Sniper",
      "a soldier who is trained to shoot accurately from long distances",
      "The sniper took out the enemy from a hidden position."),
  Word(1, "Statement", "a formal declaration or announcement",
      "The president issued a statement condemning the violence."),
  Word(1, "Impatient", "unable to wait calmly",
      "The children were impatient for the movie to start."),
  Word(1, "Impose", "to force someone to do something",
      "The new law imposes stricter penalties for drunk driving."),
  Word(1, "Scale down", "to reduce the size or amount of something",
      "The company is scaling down its operations due to financial difficulties."),
  Word(
      1,
      "Boredom",
      "a feeling of weariness and dissatisfaction from lack of activity or interest",
      "The long flight caused me to feel boredom."),
  Word(1, "Insecurity", "a feeling of uncertainty or lack of confidence",
      "She felt insecurity about her public speaking skills."),
  Word(
      1,
      "Casualty",
      "a person who is killed or injured in a war, accident, or disaster",
      "The earthquake caused a high number of casualties."),
  Word(1, "Consecutive", "following one another without interruption",
      "She won three consecutive games of chess."),
  Word(
      1,
      "Horseshoe",
      "a U-shaped metal object that is nailed to the bottom of a horse's hoof to protect it",
      "The horseshoe is considered a symbol of good luck in many cultures."),
  Word(1, "Novice", "a person who is new to an activity or skill",
      "She is a novice skier but is learning quickly."),
  Word(1, "Resilience", "the ability to recover quickly from difficulties",
      "The community showed great resilience after the natural disaster."),
  Word(
      1,
      "Judgmental",
      "forming an opinion of someone or something quickly and critically",
      "It's important to avoid being judgmental of others."),
  Word(
      1,
      "Aviation Industry",
      "the industry concerned with the design, development, operation, and maintenance of aircraft",
      "The aviation industry has been heavily impacted by the pandemic."),
  Word(
      1,
      "Invasion",
      "the act of a military force entering a country or region with the intention of conquering it",
      "The invasion led to a long and bloody war."),
  Word(
      1,
      "Inundation",
      "the act of covering something in a large amount of liquid",
      "The town was inundated by floodwaters after the river overflowed its banks."),
  Word(
      1,
      "Yes-man",
      "a person who always agrees with someone else, even if they disagree",
      "The manager surrounded himself with yes-men who wouldn't challenge his decisions."),
  Word(
      1,
      "Show must go on",
      "an expression used in theater to mean that a performance must continue even if there are problems",
      "The actors carried on with the show despite the technical difficulties."),
  Word(1, "Pronunciation", "the way a word or phrase is spoken",
      "The pronunciation of this word can be tricky."), // Already on the list, but kept it for completeness.
  Word(1, "Meaning", "the definition or significance of something",
      "The meaning of life is a question that philosophers have pondered for centuries."),
  Word(
      1,
      "Too quick to criticize",
      "having a tendency to find fault with others too readily",
      "She can be a bit too quick to criticize sometimes."),
  Word(1, "Hats off", "an expression of praise or respect",
      "Hats off to the firefighters for their bravery!"),
];
List<Word> idomsList = [
  Word(
      1,
      'A Bird In The Hand Is Worth Two In The Bush',
      'Having something that is certain is much better than taking a risk for more, because chances are you might lose everything.',
      'He decided not to invest in risky stocks, believing that a bird in the hand is worth two in the bush.'),
  Word(
      1,
      'A Blessing In Disguise',
      'Something good that isn\'t recognized at first.',
      'Losing his job turned out to be a blessing in disguise because it pushed him to start his own business.'),
  Word(
      1,
      'A Chip On Your Shoulder',
      'Being upset for something that happened in the past.',
      'He always had a chip on his shoulder about not being selected for the team in high school.'),
  Word(
      1,
      'A Doubting Thomas',
      'A skeptic who needs physical or personal evidence in order to believe something.',
      'He\'s such a doubting Thomas; he won\'t believe anything until he sees it with his own eyes.'),
  Word(
      1,
      'A Drop in the Bucket',
      'A very small part of something big or whole.',
      'The donation we made to the charity was just a drop in the bucket compared to what they need.'),
  Word(
      1,
      'A Fool And His Money Are Easily Parted',
      'It\'s easy for a foolish person to lose his/her money.',
      'He spent all his savings on lottery tickets, proving that a fool and his money are easily parted.'),
  Word(
      1,
      'A House Divided Against Itself Cannot Stand',
      'Everyone involved must unify and function together or it will not work out.',
      'The team realized that a house divided against itself cannot stand, so they worked to resolve their conflicts.'),
  Word(1, 'A Leopard Can\'t Change His Spots', 'You cannot change who you are.',
      'She always had a quick temper, and they say a leopard can\'t change his spots.'),
  Word(
      1,
      'A Penny Saved Is A Penny Earned',
      'By not spending money, you are saving money ( 1,little by little).',
      'His grandmother always told him, "A penny saved is a penny earned," so he started putting aside a portion of his allowance.'),
  Word(
      1,
      'A Picture Paints a Thousand Words',
      'A visual presentation is far more descriptive than words.',
      'The documentary showed the devastation caused by the hurricane; truly, a picture paints a thousand words.'),
  Word(
      1,
      'Break the ice',
      'To initiate conversation or social interaction in a situation where there is tension or awkwardness.',
      'He told a joke to break the ice at the beginning of the meeting.'),
  Word(
      1,
      'Hit the nail on the head',
      'To describe exactly what is causing a situation or problem.',
      'She hit the nail on the head when she pointed out the flaws in the proposal.'),
  Word(1, 'Kick the bucket', 'To die.',
      'He kicked the bucket at the age of eighty after a long and fulfilling life.'),
  Word(1, 'Piece of cake', 'Something that is very easy to do.',
      'After studying for weeks, the exam was a piece of cake.'),
  Word(1, 'Cost an arm and a leg', 'To be very expensive.',
      'The new car cost an arm and a leg, but it was worth it.'),
  Word(
      1,
      'Bite the bullet',
      'To endure a painful or difficult situation with courage and determination.',
      'She had to bite the bullet and accept the consequences of her actions.'),
  Word(1, 'A dime a dozen', 'Something common and easy to find.',
      'In that area, restaurants are a dime a dozen.'),
  Word(1, 'Burn the midnight oil', 'To work late into the night.',
      'He burned the midnight oil to finish the project before the deadline.'),
  Word(
      1,
      'Don\'t cry over spilled milk',
      'To not worry about something that has already happened and cannot be changed.',
      'I know you made a mistake, but don\'t cry over spilled milk.'),
  Word(1, 'Cat\'s out of the bag', 'A secret has been revealed.',
      'The cat\'s out of the bag about the surprise party.'),
  Word(1, 'Let the cat out of the bag', 'to reveal a secret.',
      'I accidentally let the cat out of the bag about the surprise party.'),
  Word(
      1,
      'Give the benefit of the doubt',
      'to believe someone, even though you are not sure if they are telling the truth.',
      'I\'m going to give him the benefit of the doubt and trust that he\'s telling the truth.'),
  Word(
      1,
      'A blessing in disguise',
      'something that seems bad or unlucky at first, but results in something good happening later.',
      'Losing my job turned out to be a blessing in disguise; it gave me the opportunity to pursue my passion.'),
  Word(
      1,
      'Between a rock and a hard place',
      'in a difficult situation with no good options.',
      'She was between a rock and a hard place, having to choose between her job and her family.'),
  Word(
      1,
      'Don\'t judge a book by its cover',
      'to not judge someone or something based solely on appearance.',
      'You shouldn\'t judge him by his rough exterior; he\'s actually a very kind person.'),
  Word(1, 'Pull someone\'s leg', 'to tease or joke with someone.',
      'I was just pulling your leg; I didn\'t mean to upset you.'),
  Word(
      1,
      'Break a leg',
      'a phrase used to wish someone good luck, especially before a performance.',
      'Break a leg! I know you\'re going to do great in the audition.'),
  Word(1, 'Hit the hay', 'to go to bed; to go to sleep.',
      'I\'m exhausted; I think I\'m going to hit the hay early tonight.'),
  Word(1, 'Under the weather', 'feeling ill or sick.',
      'I\'m feeling a bit under the weather, so I\'m going to stay home and rest.'),
  Word(1, 'Once in a blue moon', 'a very rare event or occurrence.',
      'They only visit us once in a blue moon, so it\'s always a special occasion when they do.'),
  Word(
      1,
      'Burn bridges',
      'to damage a relationship or make it impossible to return to a previous state.',
      'Be careful not to burn bridges when you leave your job; you never know when you might need a reference.'),
  Word(1, 'Break the bank', 'to spend or borrow a lot of money.',
      'I\'d love to go on vacation, but I don\'t want to break the bank.'),
  Word(1, 'Costs an arm and a leg', 'to be very expensive.',
      'Buying a new car can cost an arm and a leg.'),
  Word(
      1,
      'In the same boat',
      'in the same difficult situation as someone else.',
      'We\'re all in the same boat when it comes to dealing with the pandemic.'),
  Word(
      1,
      'Take the bull by the horns',
      'to confront a difficult situation with courage and determination.',
      'If you want to succeed, you need to take the bull by the horns and face your fears.'),
  Word(
      1,
      'The ball is in your court',
      'it is your responsibility to make the next move or decision.',
      'I\'ve done everything I can to help you; now the ball is in your court.'),
  Word(1, 'Piece of cake', 'something that is very easy to do.',
      'Don\'t worry about the test; it\'s a piece of cake!'),
  Word(1, 'Off the hook', 'no longer in trouble or responsible for something.',
      'Thanks to your testimony, he was let off the hook and found innocent.'),
  Word(1, 'When pigs fly', 'something that will never happen.',
      'You think he\'ll apologize? Yeah, when pigs fly!'),
  Word(
      1,
      'A taste of your own medicine',
      'being treated the way that one has treated others.',
      'After years of making fun of others, he finally got a taste of his own medicine.'),
  Word(
      1,
      'The early bird catches the worm',
      'being proactive or prompt yields positive results.',
      'I always wake up early because the early bird catches the worm.'),
  Word(
      1,
      'A drop in the ocean',
      'a small and insignificant amount compared to what is needed or required.',
      'The donation we made to the charity was just a drop in the ocean compared to their total fundraising goal.'),
  Word(
      1,
      'Hit the nail on the head',
      'to describe exactly what is causing a situation or problem.',
      'She hit the nail on the head when she identified the main issue.'),
  Word(
      1,
      'A dime a dozen',
      'something that is very common and of little value.',
      'In that area, talent agents are a dime a dozen.'),
  Word(1, 'Burn the midnight oil', 'to work late into the night.',
      'He burned the midnight oil to finish the project before the deadline.'),
  Word(
      1,
      'Cat got your tongue?',
      'used to ask someone why they are not speaking.',
      'You\'ve been unusually quiet today. Cat got your tongue?'),
  Word(1, 'Close, but no cigar', 'almost correct or successful, but not quite.',
      'You came close to winning the race, but it was close, but no cigar.'),
  Word(1, 'Cost an arm and a leg', 'to be very expensive.',
      'Buying a new car can cost an arm and a leg.'),
  Word(
      1,
      'Hit the nail on the head',
      'to describe exactly what is causing a situation or problem.',
      'She hit the nail on the head when she identified the main issue.'),
  Word(
      1,
      'Bite the bullet',
      'to endure a painful or difficult situation with courage.',
      'She knew she had to bite the bullet and tell him the truth.'),
  Word(1, 'Cut to the chase', 'to get to the point without wasting time.',
      'Let\'s cut to the chase and discuss the main issue.'),
  Word(1, 'A piece of cake', 'something that is very easy to do.',
      'Don\'t worry about the test; it\'s a piece of cake!'),
  Word(
      1,
      'Actions speak louder than words',
      'what someone actually does means more than what they say they will do.',
      'Instead of promising to help, show them; actions speak louder than words.'),
  Word(
      1,
      'Once bitten, twice shy',
      'being cautious as a result of having been hurt or deceived before.',
      'After being cheated once, she\'s now very cautious in her business dealings; once bitten, twice shy.'),
  Word(
      1,
      'Cross that bridge when you come to it',
      'to deal with a problem only when it arises.',
      'I\'m not worried about that issue yet; we\'ll cross that bridge when we come to it.'),
  Word(
      1,
      'Don\'t count your chickens before they hatch',
      'not to make plans that depend on something good happening before it actually happens.',
      'I know you\'re excited about the job interview, but don\'t count your chickens before they hatch.'),
  Word(
      1,
      'A penny for your thoughts',
      'used to ask someone what they are thinking.',
      'You seem lost in thought; a penny for your thoughts?'),
  Word(
      1,
      'Don\'t put all your eggs in one basket',
      'not to risk everything on the success of one venture.',
      'It\'s important to diversify your investments; don\'t put all your eggs in one basket.'),
  Word(
      1,
      'Every cloud has a silver lining',
      'there is something good or positive to be found in every bad situation.',
      'Even though he lost his job, he realized that every cloud has a silver lining when he found a new opportunity.'),
];
