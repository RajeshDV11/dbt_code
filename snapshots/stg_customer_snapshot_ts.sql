{% snapshot stg_customer_snapshot_ts %}
{{ config(strategy='timestamp',
unique_key='id',
updated_at='inserted_at',
invalidate_hard_deletes=true)}}

select * from {{source('datafeed_shared_schema','src_customer_snapshot_ts')}}

{% endsnapshot %}