coderunnerParser :: Parser Template
coderunnerParser =
  Template
    <$> simpleSectionParser name
    <*> simpleSectionParser author
    <*> parameterSectionParser
    <*> sectionParser task
    <*> sectionParser solution
    <*> sectionParser preAllocation
    <*> testSectionParser