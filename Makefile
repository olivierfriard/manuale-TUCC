default:
	sed "s/_DATE_/$(date)/g" manuale_tucc.rst > manuale_tucc_dated.rst
	rst2pdf manuale_tucc_dated.rst -s simple.style -o manuale_tucc.pdf
	rm manuale_tucc_dated.rst

upload:
	sed "s/_DATE_/$(date)/g" manuale_tucc.rst > manuale_tucc_dated.rst
	rst2pdf manuale_tucc_dated.rst -s simple.style -o manuale_tucc.pdf
	rm manuale_tucc_dated.rst
	git commit -am "some work"
	git push
