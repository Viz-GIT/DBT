{% set incr_load = 1 %}
{% set last_load = 3 %}
{% set cols_list = ['date_sk','sales_id','gross_amount']%}
SELECT
    {% for i in cols_list %}
        {{ i }}
        {% if not loop.last %},{% endif %}
    {% endfor %}
FROM
    {{ ref('bronze_sales') }}

{% if incr_load == 1 %}
    WHERE date_sk > {{ last_load }}
{% endif %}