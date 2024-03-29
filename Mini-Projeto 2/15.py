import os, nltk, numpy as np, tflearn, tensorflow as tf, random, string, unicodedata, sys
from nltk.stem.lancaster import LancasterStemmer
from contextlib import contextmanager


# Supress Console Logging
@contextmanager
def suppress_stdout():
    with open(os.devnull, "w") as devnull:
        old_stdout = sys.stdout
        sys.stdout = devnull
        try:  
            yield
        finally:
            sys.stdout = old_stdout
            

with suppress_stdout():
    nltk.download('punkt')
    
# a table structure to hold the different punctuation used
tbl = dict.fromkeys(i for i in range(sys.maxunicode)
                    if unicodedata.category(chr(i)).startswith('P'))



# method to remove punctuations from sentences.
def remove_punctuation(text):
    return text.translate(tbl)

# initialize the stemmer
stemmer = LancasterStemmer()
# variable to hold the Json data read from the file
data = None


data = [i.strip('\n').split('\t') for i in open(sys.argv[1])]

        
actor_name = []
character_name = []
spoken_language = []
person_name = []
runtime = []
overview = []
budget = []
original_language = []
release_date = []
revenue = []
original_title = []
production_country = []
production_company = []
genre = []
keyword = []
vote_avg = []

for sentences in data:
    category = str(sentences[0])
    
    if (category == 'actor_name '):
        actor_name.append(sentences[1])
        
    if (category == 'character_name '):
        character_name.append(sentences[1]) 
        
    if (category == 'spoken_language '):
        spoken_language.append(sentences[1])
        
    if (category == 'person_name '):
        person_name.append(sentences[1]) 
        
    if (category == 'runtime '):
        runtime.append(sentences[1])
        
    if (category == 'overview '):
        overview.append(sentences[1])
        
    if (category == 'budget '):
        budget.append(sentences[1]) 
        
    if (category == 'original_language '):
        original_language.append(sentences[1])
        
    if (category == 'release_date '):
        release_date.append(sentences[1]) 
        
    if (category == 'revenue '):
        revenue.append(sentences[1])           
     
    if (category == 'original_title '):
        original_title.append(sentences[1])
        
    if (category == 'production_country '):
        production_country.append(sentences[1])
        
    if (category == 'production_company '):
        production_company.append(sentences[1]) 
        
    if (category == 'genre '):
        genre.append(sentences[1])
        
    if (category == 'keyword '):
        keyword.append(sentences[1]) 
        
    if (category == 'vote_avg '):
        vote_avg.append(sentences[1]) 

# get a list of all categories to train for
categories = ['actor_name ', 'character_name ', 'spoken_language ', 'person_name ', 'runtime ', 'overview ', 'budget ', 'original_language ', 'release_date ', 'revenue ', 'original_title ', 'production_country ', 'production_company ', 'genre ', 'keyword ', 'vote_avg ']
words = []
# a list of tuples with words in the sentence and category name
docs = []

for each_category in categories:
    if (each_category == 'actor_name '):
    
        for each_sentence in actor_name:
            
            # remove any punctuation from the sentence
            each_sentence = remove_punctuation(each_sentence)
            # extract words from each sentence and append to the word list
            w = nltk.word_tokenize(each_sentence)
            words.extend(w)
            docs.append((w, each_category))
            
            
    if (each_category == 'character_name '):
        
            for each_sentence in character_name:
                
                # remove any punctuation from the sentence
                each_sentence = remove_punctuation(each_sentence)
                # extract words from each sentence and append to the word list
                w = nltk.word_tokenize(each_sentence)
                words.extend(w)
                docs.append((w, each_category)) 
                
    if (each_category == 'spoken_language '):
        
            for each_sentence in spoken_language:
                
                # remove any punctuation from the sentence
                each_sentence = remove_punctuation(each_sentence)
                # extract words from each sentence and append to the word list
                w = nltk.word_tokenize(each_sentence)
                words.extend(w)
                docs.append((w, each_category))
                
    if (each_category == 'person_name '):
        
            for each_sentence in person_name:
                
                # remove any punctuation from the sentence
                each_sentence = remove_punctuation(each_sentence)
                # extract words from each sentence and append to the word list
                w = nltk.word_tokenize(each_sentence)
                words.extend(w)
                docs.append((w, each_category))

    if (each_category == 'runtime '):
    
        for each_sentence in runtime:
            
            # remove any punctuation from the sentence
            each_sentence = remove_punctuation(each_sentence)
            # extract words from each sentence and append to the word list
            w = nltk.word_tokenize(each_sentence)
            words.extend(w)
            docs.append((w, each_category))
            
            
    if (each_category == 'overview '):
        
            for each_sentence in overview:
                
                # remove any punctuation from the sentence
                each_sentence = remove_punctuation(each_sentence)
                # extract words from each sentence and append to the word list
                w = nltk.word_tokenize(each_sentence)
                words.extend(w)
                docs.append((w, each_category)) 
                
    if (each_category == 'budget '):
        
            for each_sentence in budget:
                
                # remove any punctuation from the sentence
                each_sentence = remove_punctuation(each_sentence)
                # extract words from each sentence and append to the word list
                w = nltk.word_tokenize(each_sentence)
                words.extend(w)
                docs.append((w, each_category))
                
    if (each_category == 'original_language '):
        
            for each_sentence in original_language:
                
                # remove any punctuation from the sentence
                each_sentence = remove_punctuation(each_sentence)
                # extract words from each sentence and append to the word list
                w = nltk.word_tokenize(each_sentence)
                words.extend(w)
                docs.append((w, each_category))

    if (each_category == 'release_date '):
    
        for each_sentence in release_date:
            
            # remove any punctuation from the sentence
            each_sentence = remove_punctuation(each_sentence)
            # extract words from each sentence and append to the word list
            w = nltk.word_tokenize(each_sentence)
            words.extend(w)
            docs.append((w, each_category))
            
            
    if (each_category == 'revenue '):
        
            for each_sentence in revenue:
                
                # remove any punctuation from the sentence
                each_sentence = remove_punctuation(each_sentence)
                # extract words from each sentence and append to the word list
                w = nltk.word_tokenize(each_sentence)
                words.extend(w)
                docs.append((w, each_category)) 
                
    if (each_category == 'original_title '):
        
            for each_sentence in original_title:
                
                # remove any punctuation from the sentence
                each_sentence = remove_punctuation(each_sentence)
                # extract words from each sentence and append to the word list
                w = nltk.word_tokenize(each_sentence)
                words.extend(w)
                docs.append((w, each_category))
                
    if (each_category == 'production_country '):
        
            for each_sentence in production_country:
                
                # remove any punctuation from the sentence
                each_sentence = remove_punctuation(each_sentence)
                # extract words from each sentence and append to the word list
                w = nltk.word_tokenize(each_sentence)
                words.extend(w)
                docs.append((w, each_category))

    if (each_category == 'production_company '):
    
        for each_sentence in production_company:
            
            # remove any punctuation from the sentence
            each_sentence = remove_punctuation(each_sentence)
            # extract words from each sentence and append to the word list
            w = nltk.word_tokenize(each_sentence)
            words.extend(w)
            docs.append((w, each_category))
            
            
    if (each_category == 'genre '):
        
            for each_sentence in genre:
                
                # remove any punctuation from the sentence
                each_sentence = remove_punctuation(each_sentence)
                # extract words from each sentence and append to the word list
                w = nltk.word_tokenize(each_sentence)
                words.extend(w)
                docs.append((w, each_category)) 
                
    if (each_category == 'keyword '):
        
            for each_sentence in keyword:
                
                # remove any punctuation from the sentence
                each_sentence = remove_punctuation(each_sentence)
                # extract words from each sentence and append to the word list
                w = nltk.word_tokenize(each_sentence)
                words.extend(w)
                docs.append((w, each_category))
                
    if (each_category == 'vote_avg '):
        
            for each_sentence in vote_avg:
                
                # remove any punctuation from the sentence
                each_sentence = remove_punctuation(each_sentence)
                # extract words from each sentence and append to the word list
                w = nltk.word_tokenize(each_sentence)
                words.extend(w)
                docs.append((w, each_category))    
                

# stem and lower each word and remove duplicates
words = [stemmer.stem(w.lower()) for w in words]
words = sorted(list(set(words))) 


# create our training data
training = []
output = []
# create an empty array for our output
output_empty = [0] * len(categories)


for doc in docs:
    # initialize our bag of words(bow) for each document in the list
    bow = []
    # list of tokenized words for the pattern
    token_words = doc[0]
    # stem each word
    token_words = [stemmer.stem(word.lower()) for word in token_words]
    # create our bag of words array
    for w in words:
        bow.append(1) if w in token_words else bow.append(0)
        
    
    output_row = list(output_empty)
    output_row[categories.index(doc[1])] = 1

    # our training set will contain a the bag of words model and the output row that tells
    # which catefory that bow belongs to.
    training.append([bow, output_row])


# shuffle our features and turn into np.array as tensorflow  takes in numpy array
random.shuffle(training)
training = np.array(training)

# trainX contains the Bag of words and train_y contains the label/ category
train_x = list(training[:, 0])
train_y = list(training[:, 1])

# reset underlying graph data
tf.reset_default_graph()
# Build neural network
net = tflearn.input_data(shape=[None, len(train_x[0])])
net = tflearn.fully_connected(net, 20)
net = tflearn.fully_connected(net, 20)
net = tflearn.fully_connected(net, len(train_y[0]), activation='softmax')
net = tflearn.regression(net)


with suppress_stdout():
    # Define model and setup tensorboard
    model = tflearn.DNN(net)
    # Start training (apply gradient descent algorithm)
    model.fit(train_x, train_y, n_epoch=1000, show_metric=True)
    model.save('model.tflearn')


# a method that takes in a sentence and list of all words
# and returns the data in a form the can be fed to tensorflow


def get_tf_record(sentence):
    global words
    # tokenize the pattern
    sentence_words = nltk.word_tokenize(sentence)
    # stem each word
    sentence_words = [stemmer.stem(word.lower()) for word in sentence_words]
    # bag of words
    bow = [0]*len(words)
    for s in sentence_words:
        for i, w in enumerate(words):
            if w == s:
                bow[i] = 1

    return(np.array(bow))
    
    
f = open(sys.argv[2])
line = f.readline()
while line:
    print(categories[np.argmax(model.predict([get_tf_record(line)]))])
    line = f.readline()
f.close()    
