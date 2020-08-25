# Docker inheritance
FROM bioconductor/bioconductor_docker:RELEASE_3_11

# Install required Bioconductor package
RUN R -e 'BiocManager::install(c("GenomicRanges", "rioja", "fpc", "VariantAnnotation", "snpStats"))'

# Install github packages (last commit when creating docker)
RUN R -e 'devtools::install_github("isglobal-brge/recombClust")'
