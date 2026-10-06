{%- set apples=['fuji','Honeycrisp','Gala','Macintosh'] -%}
{% for i in apples %}
    {% if i != 'Macintosh' %}
        {{ i }}
    {% else %}
        I hate {{ i }}
    {% endif %}
{% endfor %}


