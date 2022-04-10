{% snapshot orders_snapshot_cli %}

{{
    config(
      target_database='dbtdemo1',
      target_schema='analytics_snapshot',
      unique_key='id',    

      strategy='timestamp',
      updated_at='update_dt'
    )
}}

select * from {{ source('raw_layer', 'orders') }}

{% endsnapshot %}