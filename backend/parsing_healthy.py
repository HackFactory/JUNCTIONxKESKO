healthy_dict = {
"eggs": "Pork meat is healthy if it is eaten in moderation, as in a smaller portion size with a larger helping of vegetables. \nToo much meat is part of what is causing most of the people, for example, in North America to be obese and contract heart disease, diabetes, cancer, and other illnesses",
"almond": "Chickpeas are a nutrient-dense food, providing rich content (20% or higher of the Daily Value, DV) of protein, dietary fibre, folate, and certain dietary minerals such as iron and phosphorus. \nWith nearly 18 grams of vegetable protein per 100 grams chickpeas are a valuable source of protein, especially for vegetarians.",
"cucumber": "According to different research studies, cucumbers:\n- fight Inflammation\n- have antioxidant properties\n- manage stress\n- reduce the risk of cancer",
"meat(pork)": "Pork meat is healthy if it is eaten in moderation, as in a smaller portion size with a larger helping of vegetables. \nToo much meat is part of what is causing most of the people, for example, in North America to be obese and contract heart disease, diabetes, cancer, and other illnesses",
"chickpeas": "Chickpeas are a nutrient-dense food, providing rich content (20% or higher of the Daily Value, DV) of protein, dietary fibre, folate, and certain dietary minerals such as iron and phosphorus.\nWith nearly 18 grams of vegetable protein per 100 grams chickpeas are a valuable source of protein, especially for vegetarians.",
"chicken": "Chiken meat is the source of:\n- Protein\n- Selenium\n- Vitamin B6\n- Vitamin B3\nFrozen chicken often comes loaded with sodium, or salt, which contributes to its flavor. Too much sodium might contribute to osteoporosis and increase the risk of heart diseases",
"fish": "Mostly -- yes, if cooked properly. Mahi-mahi, tilapia, salmon, milkfish, catfish, and bass are good for your body, because of presence of omega-3 element. \nToo much fish consumption may avoid due to possible mercury poisoning. Consuming raw fish may give you diarrhea or parasites and pathogenic bacteria.",
"broccoli": "Multiple studies have shown that cruciferous vegetables, such as broccoli, may have a cancer-preventative effect, though more research is needed. \nEating broccoli may lower blood sugar and improve diabetic control. This is likely related to its antioxidant and fiber content.",
"butter": "Butter is rich in trace minerals, especially selenium, a powerful antioxidant. Butter is rich in short and medium chain fatty acid chains that have strong anti-tumor effects. Butter is also a good dietary source cholesterol, but you should be careful with this.",
"tofu": "Tofu is an important source of protein for many vegetarians and vegans.\nIt may help lower ""bad"" LDL cholesterol.\nOne block of tofu contains 177 calories.",
"milk": "In fact, milk is one of the best muscle foods on the planet. The protein in milk is about 20 percent whey and 80 percent casein, they are both important. \nThe main disadvantages of milk are:\n- it depletes calcium from the bones (recent research)\n- presence of lactose (prone to be allergic)",
"bread": "Bread is high in calories and carbs but low in protein, fat, fiber and many vitamins and minerals. \nBread contains gluten, which can cause adverse side effects for people with celiac disease or gluten sensitivity.",
"mustard": "Mustard is mostly a healthy product, because it:\n- treats psoriasis\n- relieves contact dermatitis\n- improves cardiovascular health\n- cures aches",
"ketchup": "Tomato sauce is known to be very good for the overall health of an individual, despite the fact that it does have high sugar content. The presence of a substance known as Lycopene also acts as a rather powerful antioxidant that helps reduce the risk of cancers of the prostate, breast as well as the esophageal gland.",
"apple": "Apples are healthy, they:\n- prevent dementia\n- reduce the risk of stroke\n- lowering levels of bad cholesterol\n- reducing the risk of diabetes",
"honey": "Advantages of honey:\n- boosts the energy levels in the body\n- honey helps in dealing with allergies (but in moderate quantities)\nSome drawbacks:\n- honey reduces insulin resistance in the blood\n- raw honey Is high In toxins",
"cheese": "Having a few cubes with your salad or sprinkled over vegetables isn’t likely to cause any problems (unless you’re lactose intolerant or allergic). \nOn the other hand, regularly eating nachos drenched in melted cheddar and pizzas with extra cheese is clearly not healthy (and for more reasons than just the cheese). As with so many dietary choices, moderation is key.",
"tomato": "Including tomatoes in the diet can help protect against cancer, maintain healthy blood pressure, and reduce blood glucose in people with diabetes. \nTomatoes contain key carotenoids such as lutein and lycopene. These can protect the eye against light-induced damage. \nTomatoes are in the top ten fruits and vegetables for containing levels of pesticide residue. Wash tomatoes before eating.",
"shrimp": "Being a good source of food for those of you who are currently following a healthy diabetic diet plan or simply want to lose a specific set amount of weight quickly while still eating tasty snacks, appetizers and meals, shrimp is a useful for our health. Shrimp is a also a very good resource of Vitamin B12.",
"potato": "Potatoes have blood-pressure lowering potential. They are rich Vitamin B6, which is important for brain cell and nervous system activity",
"yogurt": "Yogurt is good for digestion and helps with losing weight",
"mushrooms": "Mushrooms are useful for:\n- heart health\n- Immunity\n- Weight management and satiety",
"chocolate": "Saying that chocolates are healthy for you is an overstatement. There are only very specific kinds of chocolates that can be designated as healthy. Dark, raw, and vegan chocolates are really the only kinds that have more positive health benefits than not. Even with those kinds, they must still be consumed in absolute moderation. It is possible to incorporate chocolates into any diets, as long as they are the right kind in the right amounts.",
"juice": "- Most juice is pure sugar\n- Juice cleanses probably won’t help you lose weight\n- Juice may even make you gain weight\n- Juice may even make you gain weight",
"sausages": "mans not hot"
}



def get_healthy_info(name="milk"):
    if name in healthy_dict:
        return healthy_dict[name]
    return "I haven't yet surveyed '{}' for being healthy :(".format(name)