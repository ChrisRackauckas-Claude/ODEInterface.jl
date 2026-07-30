using ODEInterface, SciMLTesting

# `Markdown.parse` is the only way to build a `Markdown.MD` from a string
# assembled at runtime (`@md_str` needs a literal), and the stdlib neither
# exports it nor declares it public.
run_qa(
    ODEInterface;
    ei_kwargs = (; all_qualified_accesses_are_public = (; ignore = (:parse,)))
)
