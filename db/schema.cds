namespace golf;
using {managed, cuid} from '@sap/cds/common';

entity Rounds : cuid, managed {
  title  : String(111);
  Holes : Composition of many {
    key holeNumber: Integer;
    score: Integer;
    par: Integer;
    Shots : Composition of many {
      key shotID: UUID;
      distanceFromHole: Double;
    };
  };
};
