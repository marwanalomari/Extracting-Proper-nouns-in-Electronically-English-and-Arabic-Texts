# 🧠 Proper Noun Extraction in English and Arabic Texts

> A comparative study and practical exploration of extracting **Proper Nouns** from English and Arabic electronic texts using **Perl NLP modules** and linguistic analysis.

---

## 📘 Overview

This project explores multiple techniques for **Named Entity Recognition (NER)** — with a particular focus on **Proper Noun Extraction**.  
It evaluates tools such as `Lingua::EN::NamedEntity` and introduces a **custom contextual extraction method** to improve accuracy in English texts.  
The research also highlights the developmental gap in Arabic NER systems and the potential for further investigation in this field.

---

## ⚙️ Features & Experiments

- 🔹 Implementation and testing of `Lingua::EN::NamedEntity` on real text samples  
- 🔹 Integration of **wordlists** and **regular expressions** to refine results  
- 🔹 Comparative analysis of:
  - **Rule-based** vs. **Machine Learning** approaches for Arabic NER  
  - **Contextual extraction** vs. **parsing-based** recognition in English  
- 🔹 Prototype Perl scripts for identifying and filtering named entities  

---

## 🧩 Key Findings

| Aspect | Observation |
|--------|--------------|
| **Accuracy** | The extraction meets goals but falls short of 100% precision |
| **Sentence Structure Awareness** | Modules like `Lingua::EN::NamedEntity` improve accuracy but remain imperfect |
| **Arabic Systems** | Both rule-based and ML-based models lag behind English counterparts |
| **Research Opportunity** | Wide potential for advancement in **NERA (Named Entity Recognition for Arabic)** |

---

## 🧠 Methodology Snapshot

1. **English**:  
   - Used Perl modules: `Lingua::EN::NamedEntity`, `Lingua::LinkParser`, and regex patterns  
   - Tested on English text corpora (e.g., CNN articles)  
   - Evaluated tokenization, accuracy, and contextual detection  

2. **Arabic**:  
   - Reviewed rule-based and ML-based systems (e.g., TAGARAB, NERA, ANERsys)  
   - Compared **precision**, **recall**, and **F-measure** metrics from existing literature  

---

## 📄 Conclusion

> The implemented scripts achieve partial success in extracting proper nouns, yet full accuracy remains challenging.  
> Arabic NER systems, in both rule-based and machine-learning forms, are still behind English ones — leaving a promising research avenue open for **NERA** improvements.

---

## 👨‍💻 Author

**Marwan M. Al Omari**  
*Lebanese University – 2018*  
Supervised by **Dr. Moustafa Al-Hajj**

---

## 📚 References

- [Lingua::EN::NamedEntity – CPAN](http://search.cpan.org/dist/Lingua-EN-NamedEntity/NamedEntity.pm)  
- [Parsing Natural Language with Lingua::LinkParser](https://www.foo.be/docs/tpj/issues/vol5_3/tpj0503-0010.html)  
- [Arabic Language in the Context of Information Extraction Task](https://www.dora.dmu.ac.uk/handle/2086/11188)  
- [Experts Exchange – Find Proper Nouns using REGEX](https://www.experts-exchange.com/questions/23264090/Find-proper-nouns-using-REGEX.html)  
- [British Council – Proper Nouns](https://learnenglish.britishcouncil.org/en/english-grammar/nouns/proper-nouns)

---

### 🧾 License
This research is provided for academic and educational purposes.  
Feel free to explore, fork, and build upon it for linguistic and NLP development projects.

---
