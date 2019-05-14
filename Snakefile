rule all:
    input:
        "data/gnomad.exomes.r2.1.1.sites.21.vcf"

rule FlaskApp:
    shell:
        "python app.py &" 

rule test2:
    shell:
        "echo NOTICE ME NOTICE ME 2\n echo NOTICE ME NOTICE ME2"

rule SendRequest:
    shell:
        """curl -H "Content-Type: application/json" -d "{\"filename\":\"data/gnomad.exomes.r2.1.1.sites.21.vcf\"}" http://localhost:8080"""