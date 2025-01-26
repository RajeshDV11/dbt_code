{% snapshot stg_customer_snapshot_check %}
{{ config(strategy='check',
target_schema='snapshot_check',
unique_key='id',
check_cols=['id'],
invalidate_hard_deletes=true)}}

select * from {{source('datafeed_shared_schema','src_customer_snapshot_check')}}

{% endsnapshot %}