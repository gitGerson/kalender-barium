export interface Event {
  id: number;
  title: string;
  deadline: Date;
  price: number;
  imageUrl: string;
  linkInfo: string;
  linkReg?: string;
  category: string;
  keterangan?: string;
  isActive: boolean;
}

export type Category =
  | "LKTIN"
  | "Essay"
  | "Poster"
  | "Conference"
  | "Call for Paper"
  | "Seminar"
  | "Workshop"
  | "Pelatihan K3"
  | "ISO"
  | "Business Plan"
  | "Infografis"
  | "";

export const CATEGORIES: Category[] = [
  "LKTIN",
  "Essay",
  "Poster",
  "Conference",
  "Call for Paper",
  "Seminar",
  "Workshop",
  "Pelatihan K3",
  "ISO",
  "Business Plan",
  "Infografis",
];
