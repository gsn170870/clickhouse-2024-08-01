{% macro init_s3_sources() -%}

    {% set sources = [
    'DROP table if exists src_covid_cases',

    'create table if not exists src_covid_cases (
	    date_rep String,
	    day UInt8,
	    month UInt8,
	    year UInt16,
	    cases UInt32,
	    deaths UInt32,
	    geo_id String
    ) engine = S3(\'https://storage.yandexcloud.net/ch-data-course/covid_cases/raw_covid__cases.csv\', \'CSVWithNames\')',
    'DROP table if exists ref_country_codes',

'create table ref_country_codes (
	country String,
	alpha_2code String,
	alpha_3code String,
	numeric_code UInt32,
	latitude_avg Decimal(15, 4),
	longitude_avg Decimal(15, 4)
)  engine = S3(\'https://storage.yandexcloud.net/ch-data-course/covid_cases/reference/ref__country_codes.csv\', \'CSVWithNames\')'
    ]
    %}

    {% for src in sources %}
        {% set statement = run_query(src) %}
    {% endfor %}

{%- endmacro %}