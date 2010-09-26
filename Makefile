all: serbian-iso8859_5.lm serbian-Latn-iso8859_2.lm serbian.lm serbian-Latn.lm

serbian-iso8859_5.lm: serbian.txt
	iconv -c -f UTF-8 -t ISO8859-5 < serbian.txt > serbian-iso8859_5.txt
	./text_cat -n serbian-iso8859_5.txt > serbian-iso8859_5.lm
	rm -f serbian-iso8859_5.txt

serbian.lm: serbian-iso8859_5.lm
	iconv -f ISO8859-5 -t UTF-8 < $< > $@

serbian-Latn-iso8859_2.lm: serbian.txt
	recode-sr-latin < serbian.txt > serbian-Latn.txt
	iconv -c -f UTF-8 -t ISO8859-2 < serbian-Latn.txt > serbian-Latn-iso8859_2.txt
	./text_cat -n serbian-Latn-iso8859_2.txt > serbian-Latn-iso8859_2.lm
	rm -f serbian-Latn.txt serbian-Latn-iso8859_2.txt

serbian-Latn.lm: serbian-Latn-iso8859_2.lm
	iconv -f ISO8859-2 -t UTF-8 < $< > $@

clean:
	rm -f serbian-Latn-iso8859_2.lm serbian-iso8859_5.lm serbian-Latn.lm serbian.lm

.PHONY: clean
