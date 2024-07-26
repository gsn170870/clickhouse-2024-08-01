{% macro init_s3_sources -%}

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
    ) engine = S3(\'https://storage.yandexcloud.net/ch-data-course/covid_cases/raw_covid__cases.csv\', \'CSVWithNames\')'
    ]
    %}

    {% for src in sources %}
        {% set statement = run_query(src) %}
    {% endfor %}

{%- endmacro %}