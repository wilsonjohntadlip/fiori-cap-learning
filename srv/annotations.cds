using AppService from './service';

  annotate AppService.Models with {
    ModelVersion    @title: 'Model Version';
    Model           @title: 'Model';
    ModelStatus     @title: 'Status';
    Brand           @title: 'Brand';
    OEGroup         @title: 'OE Group';
    SubGroup        @title: 'Sub Group';
    Region          @title: 'Region';
    Country         @title: 'Country';
    PropulsionType  @title: 'Propulsion Type';
    Platform        @title: 'Platform';
    DevelopmentCode @title: 'Development Code';
  };

  annotate AppService.Models with @(
    UI.HeaderInfo: {
      TypeName: 'Model',
      TypeNamePlural: 'Models',
      Title: { Value: Model },
      Description: { Value: Brand }
    },
    UI.SelectionFields: [ Brand, Region, Country, PropulsionType, ModelStatus ],
    UI.LineItem: [
      { Value: Model },
      { Value: Brand },
      { Value: Region },
      { Value: Country },
      { Value: PropulsionType },
      { Value: Platform },
      { Value: ModelStatus }
    ]
  );

  annotate AppService.Models with @(
    UI.Facets: [
      {
        $Type: 'UI.ReferenceFacet',
        Label: 'General Information',
        Target: '@UI.FieldGroup#General'
      },
      {
        $Type: 'UI.ReferenceFacet',
        Label: 'Budget',
        Target: 'BudgetRows/@UI.LineItem'
      }
    ],
    UI.FieldGroup#General: {
      Data: [
        { Value: ModelVersion },
        { Value: ModelStatus },
        { Value: Brand },
        { Value: OEGroup },
        { Value: SubGroup },
        { Value: Region },
        { Value: Country },
        { Value: PropulsionType },
        { Value: Platform },
        { Value: DevelopmentCode }
      ]
    }
  );

  annotate AppService.BudgetRows with {
    Year       @title: 'Year';
    Budget     @title: 'Budget';
    LastFC     @title: 'Last FC';
    NewFC      @title: 'New FC';
    LastIV     @title: 'Last IV';
    NewIV      @title: 'New IV';
  };

  annotate AppService.BudgetRows with @(
    UI.LineItem: [
      { Value: Year },
      { Value: Budget },
      { Value: LastFC },
      { Value: NewFC },
      { Value: LastIV },
      { Value: NewIV }
    ]
  );