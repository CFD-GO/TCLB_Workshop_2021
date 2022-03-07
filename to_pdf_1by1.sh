# #!/bin/bash
# set -e


# this script converts a list of jupyter_notebooks.ipynb to pdf

OUTPUT_DIR="pdfy"

#CONVERT_OPTION include ['PDFviaHTML', 'asciidoc', 'custom', 'html', 'latex', 'markdown', 'notebook', 'pdf', 'pdfviahtml', 'python', 'rst', 'script', 'slides', 'webpdf']
CONVERT_OPTION="PDFviaHTML" # simple pdf is not enough Oo

NOTEBOOK_PATHS=(
    "notebooks/20_SIR_0D/part1_SIR_0D_SOLUTION" 
    "notebooks/20_SIR_0D/part2_SIR_0D_stability_SOLUTION"
    "notebooks/20_SIR_0D/part3_SIR_0D_streamlines_SOLUTION"
    "notebooks/25_diffusion_FD/part1_diffusion_and_convolution_SOLUTION"
    "notebooks/25_diffusion_FD/part2_diffusion_matrix_approach_SOLUTION"
    "notebooks/30_SIRModelInSpace/part1_SIR_1D_SOLUTION"
    "notebooks/40_IntroTCLB/10_SimpleDiffusion"
    "notebooks/40_IntroTCLB/11_Dispersion"
    "notebooks/40_IntroTCLB/15_d2q9_diffusion_SpatialSIR_model"
    "notebooks/50_TCLBforSIRModelInSpace/10_SIR_in_PengModified_Model")

rm -rf $OUTPUT_DIR
mkdir -p $OUTPUT_DIR

for i in ${!NOTEBOOK_PATHS[@]};
do
    NOTEBOOK=${NOTEBOOK_PATHS[$i]}
    echo "parsing notebook[$i]: ${NOTEBOOK}.ipynb"
    jupyter-nbconvert --to ${CONVERT_OPTION} ${NOTEBOOK}.ipynb 
    mv ${NOTEBOOK}.pdf ${OUTPUT_DIR}/
done
