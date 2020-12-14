
<!-- README.md is generated from README.Rmd. Please edit that file -->

# vegtaxon

<!-- badges: start -->

<!-- badges: end -->

Developing models that include data from different sources is becoming
an increasingly useful method in vegetation ecology. Methodological
problems arise when integrating plant species lists compiled from
different sources due to taxonomic changes. Accounting for these issues
can be time consuming and necessitate the involvement of taxonomic
experts. As part of a project integrating four long-term UK vegetation
datasets (Countryside Survey, Environmental Change Network, Long Term
Monitoring Network, and National Plant Monitoring Scheme) we have
developed vegtaxon, an R package created to assist with the
harmonisation of vegetation survey data from UK datasets. vegtaxon
greatly reduces the time needed to process these data, allowing
researchers to spend more time on analysis and interpretation. We hope
this will encourage increased utilisation and integration of these
datasets. We provide guidance on how to incorporate additional species
lists into the package to allow integrated exploration with other
datasets.

The values for CSM positives and negatives are currently of limited use
for users outside of our UKCEH Integrated Modelling project. These
values represent an aggregated value for CSM positive or negative for
the following habitats: Lowland dry heath, Lowland raised bog and
lowland blanket bog, Alpine dwarf-shrub heath, Upland blanket bog and
valley bog. We aim to include CSM positive and negative indicator values
for all habitats in further package updates.

## Installation

You can install vegtaxon from <https://github.com/NERC-CEH/vegtaxon>
with:

``` r
install_github("https://github.com/NERC-CEH/vegtaxon")
```

## Accessing data

To access and download data from the Countryside Survey, Environmental
Change Network, or National Plant Monitoring Scheme, please go to
<https://eidc.ac.uk/>.

To access and download data from the Natural England Long Term
Monitoring Network, please go to
<http://publications.naturalengland.org.uk/category/5316639066161152>.
