import re

contains_substrings = [
    "is there",
    "do you have"
]

nearest_substrings = [
    "where is"
]

basic_stop_words = [
    "shop", "nearest", "in", "any", "store", "k-market", "the"
]

stop_words = set()
for string in contains_substrings + nearest_substrings + basic_stop_words:
    stop_words = stop_words.union(set(re.findall(r"[\w']+", string)))
    
def preprocessing_question(question):
    return question.strip().lower()

def classify_type(question):
    if True in [question.startswith(substring) for substring in contains_substrings]:
        return "contains"
    if True in [question.startswith(substring) for substring in nearest_substrings]:
        return "nearest"
    return "other"

def get_contatins_answer(question):
    set_of_words = set(re.findall(r"[\w']+", question)) - stop_words
    if len(set_of_words) == 1:
        item = list(set_of_words)[0]
    else:
        item = " ".join(list(set_of_words))
    
    shop = "K-Market Otaniemi, address: Otaniementie 12. Open till 23:00"
    answer = "Yes, the item {} is in the nearest shop at {}".format(item, shop)
    return answer

def get_nearest_answer(question):
    shop = "K-Market Otaniemi, address: Otaniementie 12. Open till 23:00"
    answer = "Nearest shop is {}".format(shop)
    return answer

def get_other_answer(question):
    return "This type of query is currently not supported. Please wait for a response from the support service."

femida = {
    "contains": get_contatins_answer,
    "nearest": get_nearest_answer,
    "other": get_other_answer
}


def parser_v0(question):
    question = preprocessing_question(question)
    type_answer = classify_type(question)
    print(type_answer)
    answer = femida[type_answer](question)
    return answer