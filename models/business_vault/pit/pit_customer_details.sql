{%- set yaml_metadata -%}
source_model: hub_customer
src_pk: customer_pk
as_of_dates_table: as_of_date
satellites: 
  sat_customer_details:
    pk:
      PK: customer_pk
    ldts:
      LDTS: load_date
  sat_customer_details_crm:
    pk:
      PK: customer_pk
    ldts:
      LDTS: load_date
stage_tables:
  v_stg_customers: load_date
  v_stg_customers_crm: load_date
src_ldts: load_date
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ pit(source_model=metadata_dict['source_model'], 
                src_pk=metadata_dict['src_pk'],
                as_of_dates_table=metadata_dict['as_of_dates_table'],
                satellites=metadata_dict['satellites'],
                stage_tables=metadata_dict['stage_tables'],
                src_ldts=metadata_dict['src_ldts']) }}