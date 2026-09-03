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