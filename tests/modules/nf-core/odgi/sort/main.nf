#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { ODGI_SORT } from '../../../../../modules/nf-core/odgi/sort/main.nf'

workflow test_odgi_sort {

    input = [ [ id:'test' ],
              file(params.test_data['homo_sapiens']['pangenome']['pangenome_smoothxg_gfa'], checkIfExists: true),
            ]
            
    ODGI_SORT ( input )
}
