version: 2

snapshots:
  - name: employee_snap
    relation: source('raw_data', 'EMPLOYEE')
    config:
      target_schema: snapshots
      target_database: KITTUDB
      unique_key: emp_id
      strategy: timestamp
      updated_at: updated_at