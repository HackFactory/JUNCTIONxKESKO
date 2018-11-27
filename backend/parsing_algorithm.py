import re
import parsing_nearest
import parsing_healthy

items = {
"eggs", "almond", "cucumber", "meat(pork)", 
    "chickpeas", "chicken", "fish", "broccoli", 
    "butter", "tofu", "milk", "bread", 
    "mustard", "ketchup", "apple", 
    "honey", "cheese", "tomato", 
    "shrimp", "potato", "yogurt", 
    "mushrooms", "chocolate", "juice", "sausages"}

contains_substrings = [
    "is there",
    "are there",
    "do you have",
    "where can i get"
]

information_substrings = [
    "tell me about",
]

healthy_substrings = [
    "healthy"
]

nearest_substrings = [
    "where is"
]

recipes_substrings = [
    "can i cook",
    "is there any recipe with",
    "what can i make",
    "what can i cook",
    "what can i produce"   
]

hello_substrings = [
    "hello", "hi"
]
basic_stop_words = [
    "shop", "nearest", "in", "any", "store", "k-market", "the", "please", "at", "inside", "this", "available"
]

stop_words = set()
for string in contains_substrings + hello_substrings + information_substrings + healthy_substrings + nearest_substrings + recipes_substrings + basic_stop_words:
    stop_words = stop_words.union(set(re.findall(r"[\w']+", string)))
    
    
def preprocessing_question(question):
    return question.strip().lower()

def classify_type(question):
    if True in [question.startswith(substring) for substring in recipes_substrings]:
        return "recipes"
    if True in [question.startswith(substring) for substring in contains_substrings]:
        return "contains"
    if True in [question.startswith(substring) for substring in nearest_substrings]:
        return "nearest"
    if True in [substring in question for substring in healthy_substrings]:
        return "healthy"
    
    if question == "yes" or question == "no":
        return "yesno"
    
    return "other"

def get_contatins_answer(question):
    set_of_words = set(re.findall(r"[\w']+", question)) - stop_words
    list_items = []
    for item in set_of_words:
        if item in items:
            list_items.append(item)
    if len(list_items) == 0:
        if len(set_of_words) == 1:
            item = list(set_of_words)[0]
        else:
            item = " ".join(list(set_of_words))
    else:
        item = " ".join(list_items)
    print(item)
    
    if "nearest" in question:
        # stas
        response, finnish_name = parsing_nearest.get_matches(name=item)
        if response:
            shop = "K-Market Otaniemi, adress: Otaniementie 12. Open till 23:00"
            return "Yes, your favorite '{}' is in the nearest shop at {}".format(finnish_name, shop)
        else:
            return "Unfortunately we don't have '{}' available in your closest shop. Would like having the opportunity to buy this item again? Please answer 'yes/no'".format(finnish_name)
    else:
        if item in items:
            shop = "K-Market Otaniemi, adress: Otaniementie 12. Open till 23:00"
            answer = "Yes, the item '{}' is in the nearest shop at {}".format(item, shop)
            return answer
        else:
            return "Unfortunately we don't have '{}' available in your closest shop. Would like having the opportunity to buy this item again? Please answer 'yes/no'".format(item)

def get_nearest_answer(question):
    shop = "K-Market Otaniemi, adress: Otaniementie 12. Open till 23:00"
    answer = "Nearest shop is {}".format(shop)
    return answer

def get_healthy_answer(question):
    set_of_words = set(re.findall(r"[\w']+", question)) - stop_words
    list_items = []
    for item in set_of_words:
        if item in items:
            list_items.append(item)
    if len(list_items) == 0:
        if len(set_of_words) == 1:
            item = list(set_of_words)[0]
        else:
            item = " ".join(list(set_of_words))
    else:
        item = " ".join(list_items)
    print(item)
    answer = parsing_healthy.get_healthy_info(name=item)
    return answer

def get_recipes_answer(question):
    all_elements = ["bread", "butter", "cheese", "eggs", "milk"]
    set_of_words = set(re.findall(r"[\w']+", question)) - stop_words
    list_items = []
    for item in set_of_words:
        if item in items:
            list_items.append(item)
    if len(list_items) == 0:
        list_items = list(set_of_words)

    print(list_items)
    
    need_to_buy = set(all_elements) - set(list_items)
    if len(need_to_buy) == 0:
        return "You have everything for one of your favourite dishes 'Baked Egg with Cheese'. You know what to do :)"
    return "We have one of your favourite dishes 'Baked Egg with Cheese' for you, but you need to buy some ingredients: " + ", ".join(list(need_to_buy)) 

def get_yesno_answer(question):
    if "yes" == question:
        return "Thank you for your request. If we accumulate enought votes, you will shortly find this item at your closest shop"
    if "no" == question:
        return "Thank you for your answer! If you change your mind, ask me again."
    return "Please answer 'yes/no'"

def get_other_answer(question):
    return "This type of query is currently not supported. Please wait for a response from the support service."

femida = {
    "contains": get_contatins_answer,
    "nearest": get_nearest_answer,
    "healthy": get_healthy_answer,
    "other": get_other_answer,
    "recipes": get_recipes_answer,
    "yesno": get_yesno_answer
}

def parser_v0(question):
    question = preprocessing_question(question)
    type_answer = classify_type(question)
    print(type_answer)
    answer = femida[type_answer](question)
    return answer