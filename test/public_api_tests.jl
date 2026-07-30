@testset "Public IVP wrapper API" begin
    public_names = (
        :OptionsODE,
        :RHS_CALL_INSITU,
        :OUTPUTFCN_CALL_REASON,
        :OUTPUTFCN_CALL_STEP,
        :OUTPUTFCN_WODENSE,
        :OUTPUTFCN_DENSE,
        :OUTPUTFCN_RET_CONTINUE,
        :OUTPUTFCN_RET_CONTINUE_XCHANGED,
        :dopri5,
        :dop853,
        :odex,
        :seulex,
        :radau,
        :radau5,
        :rodas,
        :ddeabm,
        :ddebdf,
    )

    @test all(name -> Base.isexported(ODEInterface, name), public_names)
    @test all(name -> haskey(Docs.meta(ODEInterface), Docs.Binding(ODEInterface, name)), public_names)
end
