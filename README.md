# Spacy


A lightweight wrapper of the amazing [spaCy](https://spacy.io) Python package.

I do not plan on registering this since it's like 20 lines of code, but it may be a good starting point for a real wrapper package.

## Usage


- Input

```julia
using Spacy

nlp = Spacy.load("en_core_web_sm")  # will download the model if needed.

text = """
    When Sebastian Thrun started working on self-driving cars at
    Google in 2007, few people outside of the company took him
    seriously. “I can tell you very senior CEOs of major American
    car companies would shake my hand and turn away because I wasn’t
    worth talking to,” said Thrun, in an interview with Recode earlier
    this week.
    """

doc = nlp(text)

for entity in doc.ents
    println("$(entity.text) ($(entity.label_))")
end
```

- Output
```
Sebastian Thrun (PERSON)
2007 (DATE)
American (NORP)
Thrun (PERSON)
Recode (ORG)
earlier
this week (DATE)
```
