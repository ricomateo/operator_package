ICS_FILENAME = "incredible-squaring-avs"

# This is a tiny Kurtosis package that can be imported to provide a data artifact of Postgres data
# This Postgres data can be imported using `pg_restore` to populate a Postgres database
def run(plan, args = {}):
    incredible_squaring = plan.upload_files(ICS_FILENAME)

    result =  struct(
        files_artifact = incredible_squaring,
        tar_filename = ICS_FILENAME,      
    )

    return result