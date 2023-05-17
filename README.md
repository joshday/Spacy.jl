# Spacy


A lightweight wrapper of the amazing [spaCy](https://spacy.io) Python package.

## Usage


- Input

```julia
using Spacy

spacy.cli.download("en_core_web_sm")

nlp = spacy.load("en_core_web_sm")

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
Google (ORG)
2007 (DATE)
American (NORP)
Thrun (PERSON)
Recode (ORG)
this week (DATE)
```
