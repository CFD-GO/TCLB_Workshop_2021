# Welcome to TCLB (and SIR+LBM in general) tutorial

<https://cfd-go.github.io/TCLB_Workshop_2021/>

## Run interactive notebooks with Jupyter Lab

<https://virtualenvwrapper.readthedocs.io/en/latest/>

```.sh
mkvirtualenv --python=$(which python3) lectures-env
pip install -r requirements.txt
jupyter lab
```

## Create a Jupyter book

A short example showing how to write a lecture series using Jupyter Book 2.0.

### Building a Jupyter Book

Run the following command in your terminal:

```bash
jb build .
```

If you would like to work with a clean build, you can empty the build folder by running:

```bash
jb clean .
```

If jupyter execution is cached, this command will not delete the cached folder.

To remove the build folder (including `cached` executables), you can run:

```bash
jb clean --all .
```

### Build pdf from html

<https://jupyterbook.org/advanced/pdf.html>

only one notebook

```bash
jupyter-nbconvert --to PDFviaHTML some_notebook.ipynb 
```

whole book

```bash
jb build workshops/ --builder pdfhtml # this uses weird converter
#or
to_pdf_1by1.sh
```

### Publishing this Jupyter Book

The `build/html` directory can be published to some kind of `gh-pages`.

The easiest way to do so is

```bash
ghp-import -n -p -f _build/html
```

more tips on <https://jupyterbook.org/start/publish.html>
