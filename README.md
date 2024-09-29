# rdabase
Redistricting analytics data &amp; shared code

## Installation

To get the data locally, clone the repository:

```bash
$ git clone https://github.com/rdatools/rdabase
$ cd rdabase
```

To run the scripts, install the dependencies:

```bash
pip install -r requirements.txt
```

To use the shared code in another project, install the package:

```bash
$ pip install rdabase
```

## Data

The data are stored in the `data` directory by state.
These pages describe each dataset:

- [Data](./docs/data.md): Census and election data by precinct.
- [Shapes](./docs/shapes.md): Shape properties by precinct.
- [Graph](./docs/graph.md): Precinct adjacency graph.

At present, data has been extracted for the 26 states with 7 or more congressional districts:
AL, AZ, CA, CO, FL, GA, IL, IN, MD, MA, MI, MN, MO, NJ, NY, NC, OH, PA, SC, TN, TX, VA, WA, and WI.
FL uses DRA's corrected precinct shapes (GeoJSON), with intersections removed, and converted to a shapefile, before simplifying them.
In the future, we may extract data for other states.

## Code

Some shared code and scripts are described here:

- [Shared Code](./docs/code.md): Common code used in multiple applications.
- [Scripts](./docs/scripts.md): Scripts to re-format the data for specific applications.

## Sources

The data comes from the following sources:

-   The total census population & VAP demographics data came from the 2020_census_XX-N.csv files
    in the DRA [vtd_data](https://github.com/dra2020/vtd_data) GitHub repository, 
    where XX is the state abbreviation and N is the suffix.
    We took the latest version of the data, which is the one with the highest N.
    DRA got the original data from the Census Bureau's [Redistricting File (Public Law 94-171) Dataset](https://www.census.gov/data/datasets/2020/dec/2020-census-redistricting-summary-file-dataset.html) or adjusted versions and
    [American Community Survey (ACS)](https://www.census.gov/programs-surveys/acs) estimates.
-   The election data comes from the 2020_election_XX-N.csv in the same repo.
    DRA got most of the election data from data partners, especially [Voting and Election Science Team (VEST)](https://election.lab.ufl.edu/precinct-data/).
-   The shapes are copies of tl_2020_FF_vtd20.zip from the Census Bureau's [Tiger Line Shapefiles]](https://www2.census.gov/geo/tiger/TIGER2020PL/LAYER/VTD/2020/), 
    where FF is the state FIPS code, e.g., 37 for North Carolina.

Some things to be aware of:

-   If it exists, we used the adjusted population data instead of the official 2020 census total population data. 
-   For Florida, the official VTDs from the Census Bureau were bad. 
    We used DRA's corrected precinct shapes (GeoJSON), removed the intersections, and then converted it to a shapefile.
-   We simplify the precinct shapes (see `extract_shape_data.py`) to approximate the simplification that DRA does, so compactness measurements align.

## Testing

```bash
$ pytest
```
