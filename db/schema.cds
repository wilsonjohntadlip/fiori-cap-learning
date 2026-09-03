namespace fiori.learning;

entity Models {
key ModelVersion   : String(20);
    Model           : String(100);
    ModelStatus     : String(20);
    OEGroupNr       : String(10);
    OEGroup         : String(100);
    BrandNr         : String(10);
    Brand           : String(100);
    SubGroup        : String(100);
    Region          : String(50);
    Country         : String(50);
    PropulsionType  : String(20);
    DevelopmentCode : String(50);
    PlatformNr      : String(10);
    Platform        : String(100);
}

entity Cycles {
    key ID           : Integer;
        Creator      : String(100);
        Title        : String(100);
        CycleStatus  : String(30);
        UploadStatus : String(30);
  }

entity ApprovalFlow {
    key ID            : Integer;
        ModelVersion  : String(20);
        Model         : String(100);
        RequestType   : String(10) enum { Create; Update; Delete; };
        RequestStatus : String(10) enum { Pending; Approved; Rejected; };
        CreatedBy     : String(100);
  }