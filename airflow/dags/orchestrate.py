from airflow.sdk import dag, task


@dag()
def orchestrate():

    @task
    def ingest_cdc():
        return "CDC data injested"

    @task.bash
    def source_freshness():
        #Manually set the working directory using cd command before executing the dbt command
        return "cd /opt/airflow/walmart_project/ && dbt source freshness"
    
    #Define the dependencies
    ingest_cdc() >> source_freshness()


orchestrate_dag = orchestrate()    