//
//  EhProfile.swift
//  EhProfile
//
//  Created by 荒木辰造 on 2021/08/08.
//

// MARK: EhProfile
struct EhProfile {
    // swiftlint:disable line_length
    static let empty = EhProfile(capableLoadThroughHathSetting: .defaultPortOnly, capableImageResolution: .x780, capableSearchResultCount: .twentyFive, capableThumbnailConfigSize: .normal, capableThumbnailConfigRows: .twenty, loadThroughHathSetting: .anyClient, imageResolution: .auto, imageSizeWidth: 0, imageSizeHeight: 0, galleryName: .default, archiverBehavior: .manualSelectManualStart, displayMode: .compact, doujinshiDisabled: false, mangaDisabled: false, artistCGDisabled: false, gameCGDisabled: false, westernDisabled: false, nonHDisabled: false, imageSetDisabled: false, cosplayDisabled: false, asianPornDisabled: false, miscDisabled: false, favoriteName0: "Favorites 0", favoriteName1: "Favorites 1", favoriteName2: "Favorites 2", favoriteName3: "Favorites 3", favoriteName4: "Favorites 4", favoriteName5: "Favorites 5", favoriteName6: "Favorites 6", favoriteName7: "Favorites 7", favoriteName8: "Favorites 8", favoriteName9: "Favorites 9", favoritesSortOrder: .favoritedTime, ratingsColor: "", reclassExcluded: false, languageExcluded: false, parodyExcluded: false, characterExcluded: false, groupExcluded: false, artistExcluded: false, maleExcluded: false, femaleExcluded: false, tagFilteringThreshold: 0, tagWatchingThreshold: 0, excludedUploaders: "", searchResultCount: .twentyFive, thumbnailLoadTiming: .onMouseOver, thumbnailConfigSize: .normal, thumbnailConfigRows: .four, thumbnailScaleFactor: 100, viewportVirtualWidth: 0, commentsSortOrder: .oldest, commentVotesShowTiming: .onHoverOrClick, tagsSortOrder: .alphabetical, galleryShowPageNumbers: false, hathLocalNetworkHost: ""
    )
    // swiftlint:enable line_length

    var capableLoadThroughHathSetting: EhProfileLoadThroughHathSetting
    var capableImageResolution: EhProfileImageResolution
    var capableSearchResultCount: EhProfileSearchResultCount
    var capableThumbnailConfigSize: EhProfileThumbnailSize
    var capableThumbnailConfigRows: EhProfileThumbnailRows

    var loadThroughHathSetting: EhProfileLoadThroughHathSetting
    var imageResolution: EhProfileImageResolution
    var imageSizeWidth: Float
    var imageSizeHeight: Float
    var galleryName: EhProfileGalleryName
    var archiverBehavior: EhProfileArchiverBehavior
    var displayMode: EhProfileDisplayMode

    // Front Page Settings
    var doujinshiDisabled: Bool
    var mangaDisabled: Bool
    var artistCGDisabled: Bool
    var gameCGDisabled: Bool
    var westernDisabled: Bool
    var nonHDisabled: Bool
    var imageSetDisabled: Bool
    var cosplayDisabled: Bool
    var asianPornDisabled: Bool
    var miscDisabled: Bool

    // Favorites
    var favoriteName0: String
    var favoriteName1: String
    var favoriteName2: String
    var favoriteName3: String
    var favoriteName4: String
    var favoriteName5: String
    var favoriteName6: String
    var favoriteName7: String
    var favoriteName8: String
    var favoriteName9: String

    var favoritesSortOrder: EhProfileFavoritesSortOrder
    var ratingsColor: String

    // Tag Namespaces
    var reclassExcluded: Bool
    var languageExcluded: Bool
    var parodyExcluded: Bool
    var characterExcluded: Bool
    var groupExcluded: Bool
    var artistExcluded: Bool
    var maleExcluded: Bool
    var femaleExcluded: Bool

    var tagFilteringThreshold: Float
    var tagWatchingThreshold: Float
    var excludedUploaders: String
    var searchResultCount: EhProfileSearchResultCount
    var thumbnailLoadTiming: EhProfileThumbnailLoadTiming
    var thumbnailConfigSize: EhProfileThumbnailSize
    var thumbnailConfigRows: EhProfileThumbnailRows
    var thumbnailScaleFactor: Float
    var viewportVirtualWidth: Float
    var commentsSortOrder: EhProfileCommentsSortOrder
    var commentVotesShowTiming: EhProfileCommentVotesShowTiming
    var tagsSortOrder: EhProfileTagsSortOrder
    var galleryShowPageNumbers: Bool
    var hathLocalNetworkHost: String
    var useOriginalImages: Bool?
    var useMultiplePageViewer: Bool?
    var multiplePageViewerStyle: EhProfileMultiplePageViewerStyle?
    var multiplePageViewerShowThumbnailPane: Bool?
}

// MARK: LoadThroughHathSetting
enum EhProfileLoadThroughHathSetting: Int, CaseIterable, Identifiable, Comparable {
    case anyClient
    case defaultPortOnly
    case no
}
extension EhProfileLoadThroughHathSetting {
    var id: Int { rawValue }
    static func < (
        lhs: EhProfileLoadThroughHathSetting,
        rhs: EhProfileLoadThroughHathSetting
    ) -> Bool {
        lhs.rawValue < rhs.rawValue
    }

    var value: String {
        switch self {
        case .anyClient:
            return "Any client"
        case .defaultPortOnly:
            return "Default port clients only"
        case .no:
            return "LOAD_THROUGH_HATH_NO"
        }
    }
    var description: String {
        switch self {
        case .anyClient:
            return "Recommended."
        case .defaultPortOnly:
            return "Can be slower. Enable if behind firewall/proxy that blocks outgoing non-standard ports."
        case .no:
            return "Donator only. You will not be able to browse as many pages, enable only if having severe problems."
        }
    }
}

// MARK: ImageResolution
enum EhProfileImageResolution: Int, CaseIterable, Identifiable, Comparable {
    case auto
    case x780
    case x980
    case x1280
    case x1600
    case x2400
}
extension EhProfileImageResolution {
    var id: Int { rawValue }
    static func < (
        lhs: EhProfileImageResolution,
        rhs: EhProfileImageResolution
    ) -> Bool {
        lhs.rawValue < rhs.rawValue
    }

    var value: String {
        switch self {
        case .auto:
            return "Auto"
        case .x780:
            return "780x"
        case .x980:
            return "980x"
        case .x1280:
            return "1280x"
        case .x1600:
            return "1600x"
        case .x2400:
            return "2400x"
        }
    }
}

// MARK: GalleryName
enum EhProfileGalleryName: Int, CaseIterable, Identifiable {
    case `default`
    case japanese
}
extension EhProfileGalleryName {
    var id: Int { rawValue }

    var value: String {
        switch self {
        case .default:
            return "Default Title"
        case .japanese:
            return "Japanese Title (if available)"
        }
    }
}

// MARK: ArchiverBehavior
enum EhProfileArchiverBehavior: Int, CaseIterable, Identifiable {
    case manualSelectManualStart
    case manualSelectAutoStart
    case autoSelectOriginalManualStart
    case autoSelectOriginalAutoStart
    case autoSelectResampleManualStart
    case autoSelectResampleAutoStart
}
extension EhProfileArchiverBehavior {
    var id: Int { rawValue }

    var value: String {
        switch self {
        case .manualSelectManualStart:
            return "Manual Select, Manual Start (Default)"
        case .manualSelectAutoStart:
            return "Manual Select, Auto Start"
        case .autoSelectOriginalManualStart:
            return "Auto Select Original, Manual Start"
        case .autoSelectOriginalAutoStart:
            return "Auto Select Original, Auto Start"
        case .autoSelectResampleManualStart:
            return "Auto Select Resample, Manual Start"
        case .autoSelectResampleAutoStart:
            return "Auto Select Resample, Auto Start"
        }
    }
}

// MARK: DisplayMode
enum EhProfileDisplayMode: Int, CaseIterable, Identifiable {
    case compact
    case thumbnail
    case extended
    case minimal
    case minimalPlus
}
extension EhProfileDisplayMode {
    var id: Int { rawValue }

    var value: String {
        switch self {
        case .compact:
            return "Compact"
        case .thumbnail:
            return "Thumbnail"
        case .extended:
            return "Extended"
        case .minimal:
            return "Minimal"
        case .minimalPlus:
            return "Minimal+"
        }
    }
}

// MARK: FavoritesSortOrder
enum EhProfileFavoritesSortOrder: Int, CaseIterable, Identifiable {
    case lastUpdateTime
    case favoritedTime
}
extension EhProfileFavoritesSortOrder {
    var id: Int { rawValue }

    var value: String {
        switch self {
        case .lastUpdateTime:
            return "By last gallery update time"
        case .favoritedTime:
            return "By favorited time"
        }
    }
}

// MARK: SearchResultCount
enum EhProfileSearchResultCount: Int, CaseIterable, Identifiable, Comparable {
    case twentyFive
    case fifty
    case oneHundred
    case twoHundred
}
extension EhProfileSearchResultCount {
    var id: Int { rawValue }
    static func < (
        lhs: EhProfileSearchResultCount,
        rhs: EhProfileSearchResultCount
    ) -> Bool {
        lhs.rawValue < rhs.rawValue
    }

    var value: String {
        switch self {
        case .twentyFive:
            return "25"
        case .fifty:
            return "50"
        case .oneHundred:
            return "100"
        case .twoHundred:
            return "200"
        }
    }
}

// MARK: ThumbnailLoadTiming
enum EhProfileThumbnailLoadTiming: Int, CaseIterable, Identifiable {
    case onMouseOver
    case onPageLoad
}
extension EhProfileThumbnailLoadTiming {
    var id: Int { rawValue }

    var value: String {
        switch self {
        case .onMouseOver:
            return "On mouse-over"
        case .onPageLoad:
            return "On page load"
        }
    }
    var description: String {
        switch self {
        case .onMouseOver:
            return "Pages load faster, but there may be a slight delay before a thumb appears."
        case .onPageLoad:
            return "Pages take longer to load, but there is no delay for loading a thumb after the page has loaded."
        }
    }
}

// MARK: ThumbnailSize
enum EhProfileThumbnailSize: Int, CaseIterable, Identifiable, Comparable {
    case normal
    case large
}
extension EhProfileThumbnailSize {
    var id: Int { rawValue }
    static func < (
        lhs: EhProfileThumbnailSize,
        rhs: EhProfileThumbnailSize
    ) -> Bool {
        lhs.rawValue < rhs.rawValue
    }

    var value: String {
        switch self {
        case .normal:
            return "Normal"
        case .large:
            return "Large"
        }
    }
}

// MARK: ThumbnailRows
enum EhProfileThumbnailRows: Int, CaseIterable, Identifiable, Comparable {
    case four
    case ten
    case twenty
    case forty
}
extension EhProfileThumbnailRows {
    var id: Int { rawValue }
    static func < (
        lhs: EhProfileThumbnailRows,
        rhs: EhProfileThumbnailRows
    ) -> Bool {
        lhs.rawValue < rhs.rawValue
    }

    var value: String {
        switch self {
        case .four:
            return "4"
        case .ten:
            return "10"
        case .twenty:
            return "20"
        case .forty:
            return "40"
        }
    }
}

// MARK: CommentsSortOrder
enum EhProfileCommentsSortOrder: Int, CaseIterable, Identifiable {
    case oldest
    case recent
    case highestScore
}
extension EhProfileCommentsSortOrder {
    var id: Int { rawValue }

    var value: String {
        switch self {
        case .oldest:
            return "Oldest comments first"
        case .recent:
            return "Recent comments first"
        case .highestScore:
            return "By highest score"
        }
    }
}

// MARK: CommentVotesShowTiming
enum EhProfileCommentVotesShowTiming: Int, CaseIterable, Identifiable {
    case onHoverOrClick
    case always
}
extension EhProfileCommentVotesShowTiming {
    var id: Int { rawValue }

    var value: String {
        switch self {
        case .onHoverOrClick:
            return "On score hover or click"
        case .always:
            return "Always"
        }
    }
}

// MARK: TagsSortOrder
enum EhProfileTagsSortOrder: Int, CaseIterable, Identifiable {
    case alphabetical
    case tagPower
}
extension EhProfileTagsSortOrder {
    var id: Int { rawValue }

    var value: String {
        switch self {
        case .alphabetical:
            return "Alphabetical"
        case .tagPower:
            return "By tag power"
        }
    }
}

// MARK: MultiplePageViewerStyle
enum EhProfileMultiplePageViewerStyle: Int, CaseIterable, Identifiable {
    case alignLeftScaleIfOverWidth
    case alignCenterScaleIfOverWidth
    case alignCenterAlwaysScale
}
extension EhProfileMultiplePageViewerStyle {
    var id: Int { rawValue }

    var value: String {
        switch self {
        case .alignLeftScaleIfOverWidth:
            return "Align left, scale if overwidth"
        case .alignCenterScaleIfOverWidth:
            return "Align center, scale if overwidth"
        case .alignCenterAlwaysScale:
            return "Align center, always scale"
        }
    }
}

// MARK: EhProfileCountry
// swiftlint:disable line_length switch_case_alignment
enum EhProfileCountry: String, CaseIterable {
    case autoDetect = "-"; case afghanistan = "AF"; case alandIslands = "AX"; case albania = "AL"; case algeria = "DZ"; case americanSamoa = "AS"; case andorra = "AD"; case angola = "AO"; case anguilla = "AI"; case antarctica = "AQ"; case antiguaandBarbuda = "AG"; case argentina = "AR"; case armenia = "AM"; case aruba = "AW"; case asiaPacificRegion = "AP"; case australia = "AU"; case austria = "AT"; case azerbaijan = "AZ"; case bahamas = "BS"; case bahrain = "BH"; case bangladesh = "BD"; case barbados = "BB"; case belarus = "BY"; case belgium = "BE"; case belize = "BZ"; case benin = "BJ"; case bermuda = "BM"; case bhutan = "BT"; case bolivia = "BO"; case bonaireSaintEustatiusandSaba = "BQ"; case bosniaandHerzegovina = "BA"; case botswana = "BW"; case bouvetIsland = "BV"; case brazil = "BR"; case britishIndianOceanTerritory = "IO"; case bruneiDarussalam = "BN"; case bulgaria = "BG"; case burkinaFaso = "BF"; case burundi = "BI"; case cambodia = "KH"; case cameroon = "CM"; case canada = "CA"; case capeVerde = "CV"; case caymanIslands = "KY"; case centralAfricanRepublic = "CF"; case chad = "TD"; case chile = "CL"; case china = "CN"; case christmasIsland = "CX"; case cocosIslands = "CC"; case colombia = "CO"; case comoros = "KM"; case congo = "CG"; case congoTheDemocraticRepublicofthe = "CD"; case cookIslands = "CK"; case costaRica = "CR"; case coteDIvoire = "CI"; case croatia = "HR"; case cuba = "CU"; case curacao = "CW"; case cyprus = "CY"; case czechRepublic = "CZ"; case denmark = "DK"; case djibouti = "DJ"; case dominica = "DM"; case dominicanRepublic = "DO"; case ecuador = "EC"; case egypt = "EG"; case elSalvador = "SV"; case equatorialGuinea = "GQ"; case eritrea = "ER"; case estonia = "EE"; case ethiopia = "ET"; case europe = "EU"; case falklandIslands = "FK"; case faroeIslands = "FO"; case fiji = "FJ"; case finland = "FI"; case france = "FR"; case frenchGuiana = "GF"; case frenchPolynesia = "PF"; case frenchSouthernTerritories = "TF"; case gabon = "GA"; case gambia = "GM"; case georgia = "GE"; case germany = "DE"; case ghana = "GH"; case gibraltar = "GI"; case greece = "GR"; case greenland = "GL"; case grenada = "GD"; case guadeloupe = "GP"; case guam = "GU"; case guatemala = "GT"; case guernsey = "GG"; case guinea = "GN"; case guineaBissau = "GW"; case guyana = "GY"; case haiti = "HT"; case heardIslandandMcDonaldIslands = "HM"; case holySeeVaticanCityState = "VA"; case honduras = "HN"; case hongKong = "HK"; case hungary = "HU"; case iceland = "IS"; case india = "IN"; case indonesia = "ID"; case iran = "IR"; case iraq = "IQ"; case ireland = "IE"; case isleofMan = "IM"; case israel = "IL"; case italy = "IT"; case jamaica = "JM"; case japan = "JP"; case jersey = "JE"; case jordan = "JO"; case kazakhstan = "KZ"; case kenya = "KE"; case kiribati = "KI"; case kuwait = "KW"; case kyrgyzstan = "KG"; case laoPeoplesDemocraticRepublic = "LA"; case latvia = "LV"; case lebanon = "LB"; case lesotho = "LS"; case liberia = "LR"; case libya = "LY"; case liechtenstein = "LI"; case lithuania = "LT"; case luxembourg = "LU"; case macau = "MO"; case macedonia = "MK"; case madagascar = "MG"; case malawi = "MW"; case malaysia = "MY"; case maldives = "MV"; case mali = "ML"; case malta = "MT"; case marshallIslands = "MH"; case martinique = "MQ"; case mauritania = "MR"; case mauritius = "MU"; case mayotte = "YT"; case mexico = "MX"; case micronesia = "FM"; case moldova = "MD"; case monaco = "MC"; case mongolia = "MN"; case montenegro = "ME"; case montserrat = "MS"; case morocco = "MA"; case mozambique = "MZ"; case myanmar = "MM"; case namibia = "NA"; case nauru = "NR"; case nepal = "NP"; case netherlands = "NL"; case newCaledonia = "NC"; case newZealand = "NZ"; case nicaragua = "NI"; case niger = "NE"; case nigeria = "NG"; case niue = "NU"; case norfolkIsland = "NF"; case northKorea = "KP"; case northernMarianaIslands = "MP"; case norway = "NO"; case oman = "OM"; case pakistan = "PK"; case palau = "PW"; case palestinianTerritory = "PS"; case panama = "PA"; case papuaNewGuinea = "PG"; case paraguay = "PY"; case peru = "PE"; case philippines = "PH"; case pitcairnIslands = "PN"; case poland = "PL"; case portugal = "PT"; case puertoRico = "PR"; case qatar = "QA"; case reunion = "RE"; case romania = "RO"; case russianFederation = "RU"; case rwanda = "RW"; case saintBarthelemy = "BL"; case saintHelena = "SH"; case saintKittsandNevis = "KN"; case saintLucia = "LC"; case saintMartin = "MF"; case saintPierreandMiquelon = "PM"; case saintVincentandtheGrenadines = "VC"; case samoa = "WS"; case sanMarino = "SM"; case saoTomeandPrincipe = "ST"; case saudiArabia = "SA"; case senegal = "SN"; case serbia = "RS"; case seychelles = "SC"; case sierraLeone = "SL"; case singapore = "SG"; case sintMaarten = "SX"; case slovakia = "SK"; case slovenia = "SI"; case solomonIslands = "SB"; case somalia = "SO"; case southAfrica = "ZA"; case southGeorgiaandtheSouthSandwichIslands = "GS"; case southKorea = "KR"; case southSudan = "SS"; case spain = "ES"; case sriLanka = "LK"; case sudan = "SD"; case suriname = "SR"; case svalbardandJanMayen = "SJ"; case swaziland = "SZ"; case sweden = "SE"; case switzerland = "CH"; case syrianArabRepublic = "SY"; case taiwan = "TW"; case tajikistan = "TJ"; case tanzania = "TZ"; case thailand = "TH"; case timorLeste = "TL"; case togo = "TG"; case tokelau = "TK"; case tonga = "TO"; case trinidadandTobago = "TT"; case tunisia = "TN"; case turkey = "TR"; case turkmenistan = "TM"; case turksandCaicosIslands = "TC"; case tuvalu = "TV"; case uganda = "UG"; case ukraine = "UA"; case unitedArabEmirates = "AE"; case unitedKingdom = "GB"; case unitedStates = "US"; case unitedStatesMinorOutlyingIslands = "UM"; case uruguay = "UY"; case uzbekistan = "UZ"; case vanuatu = "VU"; case venezuela = "VE"; case vietnam = "VN"; case virginIslandsBritish = "VG"; case virginIslandsUS = "VI"; case wallisandFutuna = "WF"; case westernSahara = "EH"; case yemen = "YE"; case zambia = "ZM"; case zimbabwe = "ZW"
}
extension EhProfileCountry {
    var name: String {
        switch self {
        case .autoDetect: return "Auto-Detect"; case .afghanistan: return "Afghanistan"; case .alandIslands: return "Aland Islands"; case .albania: return "Albania"; case .algeria: return "Algeria"; case .americanSamoa: return "American Samoa"; case .andorra: return "Andorra"; case .angola: return "Angola"; case .anguilla: return "Anguilla"; case .antarctica: return "Antarctica"; case .antiguaandBarbuda: return "Antigua and Barbuda"; case .argentina: return "Argentina"; case .armenia: return "Armenia"; case .aruba: return "Aruba"; case .asiaPacificRegion: return "Asia-Pacific Region"; case .australia: return "Australia"; case .austria: return "Austria"; case .azerbaijan: return "Azerbaijan"; case .bahamas: return "Bahamas"; case .bahrain: return "Bahrain"; case .bangladesh: return "Bangladesh"; case .barbados: return "Barbados"; case .belarus: return "Belarus"; case .belgium: return "Belgium"; case .belize: return "Belize"; case .benin: return "Benin"; case .bermuda: return "Bermuda"; case .bhutan: return "Bhutan"; case .bolivia: return "Bolivia"; case .bonaireSaintEustatiusandSaba: return "Bonaire Saint Eustatius and Saba"; case .bosniaandHerzegovina: return "Bosnia and Herzegovina"; case .botswana: return "Botswana"; case .bouvetIsland: return "Bouvet Island"; case .brazil: return "Brazil"; case .britishIndianOceanTerritory: return "British Indian Ocean Territory"; case .bruneiDarussalam: return "Brunei Darussalam"; case .bulgaria: return "Bulgaria"; case .burkinaFaso: return "Burkina Faso"; case .burundi: return "Burundi"; case .cambodia: return "Cambodia"; case .cameroon: return "Cameroon"; case .canada: return "Canada"; case .capeVerde: return "Cape Verde"; case .caymanIslands: return "Cayman Islands"; case .centralAfricanRepublic: return "Central African Republic"; case .chad: return "Chad"; case .chile: return "Chile"; case .china: return "China"; case .christmasIsland: return "Christmas Island"; case .cocosIslands: return "Cocos Islands"; case .colombia: return "Colombia"; case .comoros: return "Comoros"; case .congo: return "Congo"; case .congoTheDemocraticRepublicofthe: return "The Democratic Republic of the Congo"; case .cookIslands: return "Cook Islands"; case .costaRica: return "Costa Rica"; case .coteDIvoire: return "Cote D'Ivoire"; case .croatia: return "Croatia"; case .cuba: return "Cuba"; case .curacao: return "Curacao"; case .cyprus: return "Cyprus"; case .czechRepublic: return "Czech Republic"; case .denmark: return "Denmark"; case .djibouti: return "Djibouti"; case .dominica: return "Dominica"; case .dominicanRepublic: return "Dominican Republic"; case .ecuador: return "Ecuador"; case .egypt: return "Egypt"; case .elSalvador: return "El Salvador"; case .equatorialGuinea: return "Equatorial Guinea"; case .eritrea: return "Eritrea"; case .estonia: return "Estonia"; case .ethiopia: return "Ethiopia"; case .europe: return "Europe"; case .falklandIslands: return "Falkland Islands"; case .faroeIslands: return "Faroe Islands"; case .fiji: return "Fiji"; case .finland: return "Finland"; case .france: return "France"; case .frenchGuiana: return "French Guiana"; case .frenchPolynesia: return "French Polynesia"; case .frenchSouthernTerritories: return "French Southern Territories"; case .gabon: return "Gabon"; case .gambia: return "Gambia"; case .georgia: return "Georgia"; case .germany: return "Germany"; case .ghana: return "Ghana"; case .gibraltar: return "Gibraltar"; case .greece: return "Greece"; case .greenland: return "Greenland"; case .grenada: return "Grenada"; case .guadeloupe: return "Guadeloupe"; case .guam: return "Guam"; case .guatemala: return "Guatemala"; case .guernsey: return "Guernsey"; case .guinea: return "Guinea"; case .guineaBissau: return "Guinea-Bissau"; case .guyana: return "Guyana"; case .haiti: return "Haiti"; case .heardIslandandMcDonaldIslands: return "Heard Island and McDonald Islands"; case .holySeeVaticanCityState: return "Vatican City State"; case .honduras: return "Honduras"; case .hongKong: return "Hong Kong"; case .hungary: return "Hungary"; case .iceland: return "Iceland"; case .india: return "India"; case .indonesia: return "Indonesia"; case .iran: return "Iran"; case .iraq: return "Iraq"; case .ireland: return "Ireland"; case .isleofMan: return "Isle of Man"; case .israel: return "Israel"; case .italy: return "Italy"; case .jamaica: return "Jamaica"; case .japan: return "Japan"; case .jersey: return "Jersey"; case .jordan: return "Jordan"; case .kazakhstan: return "Kazakhstan"; case .kenya: return "Kenya"; case .kiribati: return "Kiribati"; case .kuwait: return "Kuwait"; case .kyrgyzstan: return "Kyrgyzstan"; case .laoPeoplesDemocraticRepublic: return "Lao People's Democratic Republic"; case .latvia: return "Latvia"; case .lebanon: return "Lebanon"; case .lesotho: return "Lesotho"; case .liberia: return "Liberia"; case .libya: return "Libya"; case .liechtenstein: return "Liechtenstein"; case .lithuania: return "Lithuania"; case .luxembourg: return "Luxembourg"; case .macau: return "Macau"; case .macedonia: return "Macedonia"; case .madagascar: return "Madagascar"; case .malawi: return "Malawi"; case .malaysia: return "Malaysia"; case .maldives: return "Maldives"; case .mali: return "Mali"; case .malta: return "Malta"; case .marshallIslands: return "Marshall Islands"; case .martinique: return "Martinique"; case .mauritania: return "Mauritania"; case .mauritius: return "Mauritius"; case .mayotte: return "Mayotte"; case .mexico: return "Mexico"; case .micronesia: return "Micronesia"; case .moldova: return "Moldova"; case .monaco: return "Monaco"; case .mongolia: return "Mongolia"; case .montenegro: return "Montenegro"; case .montserrat: return "Montserrat"; case .morocco: return "Morocco"; case .mozambique: return "Mozambique"; case .myanmar: return "Myanmar"; case .namibia: return "Namibia"; case .nauru: return "Nauru"; case .nepal: return "Nepal"; case .netherlands: return "Netherlands"; case .newCaledonia: return "New Caledonia"; case .newZealand: return "New Zealand"; case .nicaragua: return "Nicaragua"; case .niger: return "Niger"; case .nigeria: return "Nigeria"; case .niue: return "Niue"; case .norfolkIsland: return "Norfolk Island"; case .northKorea: return "North Korea"; case .northernMarianaIslands: return "Northern Mariana Islands"; case .norway: return "Norway"; case .oman: return "Oman"; case .pakistan: return "Pakistan"; case .palau: return "Palau"; case .palestinianTerritory: return "Palestinian Territory"; case .panama: return "Panama"; case .papuaNewGuinea: return "Papua New Guinea"; case .paraguay: return "Paraguay"; case .peru: return "Peru"; case .philippines: return "Philippines"; case .pitcairnIslands: return "Pitcairn Islands"; case .poland: return "Poland"; case .portugal: return "Portugal"; case .puertoRico: return "Puerto Rico"; case .qatar: return "Qatar"; case .reunion: return "Reunion"; case .romania: return "Romania"; case .russianFederation: return "Russian Federation"; case .rwanda: return "Rwanda"; case .saintBarthelemy: return "Saint Barthelemy"; case .saintHelena: return "Saint Helena"; case .saintKittsandNevis: return "Saint Kitts and Nevis"; case .saintLucia: return "Saint Lucia"; case .saintMartin: return "Saint Martin"; case .saintPierreandMiquelon: return "Saint Pierre and Miquelon"; case .saintVincentandtheGrenadines: return "Saint Vincent and the Grenadines"; case .samoa: return "Samoa"; case .sanMarino: return "San Marino"; case .saoTomeandPrincipe: return "Sao Tome and Principe"; case .saudiArabia: return "Saudi Arabia"; case .senegal: return "Senegal"; case .serbia: return "Serbia"; case .seychelles: return "Seychelles"; case .sierraLeone: return "Sierra Leone"; case .singapore: return "Singapore"; case .sintMaarten: return "Sint Maarten"; case .slovakia: return "Slovakia"; case .slovenia: return "Slovenia"; case .solomonIslands: return "Solomon Islands"; case .somalia: return "Somalia"; case .southAfrica: return "South Africa"; case .southGeorgiaandtheSouthSandwichIslands: return "South Georgia and the South Sandwich Islands"; case .southKorea: return "South Korea"; case .southSudan: return "South Sudan"; case .spain: return "Spain"; case .sriLanka: return "Sri Lanka"; case .sudan: return "Sudan"; case .suriname: return "Suriname"; case .svalbardandJanMayen: return "Svalbard and Jan Mayen"; case .swaziland: return "Swaziland"; case .sweden: return "Sweden"; case .switzerland: return "Switzerland"; case .syrianArabRepublic: return "Syrian Arab Republic"; case .taiwan: return "Taiwan"; case .tajikistan: return "Tajikistan"; case .tanzania: return "Tanzania"; case .thailand: return "Thailand"; case .timorLeste: return "Timor-Leste"; case .togo: return "Togo"; case .tokelau: return "Tokelau"; case .tonga: return "Tonga"; case .trinidadandTobago: return "Trinidad and Tobago"; case .tunisia: return "Tunisia"; case .turkey: return "Turkey"; case .turkmenistan: return "Turkmenistan"; case .turksandCaicosIslands: return "Turks and Caicos Islands"; case .tuvalu: return "Tuvalu"; case .uganda: return "Uganda"; case .ukraine: return "Ukraine"; case .unitedArabEmirates: return "United Arab Emirates"; case .unitedKingdom: return "United Kingdom"; case .unitedStates: return "United States"; case .unitedStatesMinorOutlyingIslands: return "United States Minor Outlying Islands"; case .uruguay: return "Uruguay"; case .uzbekistan: return "Uzbekistan"; case .vanuatu: return "Vanuatu"; case .venezuela: return "Venezuela"; case .vietnam: return "Vietnam"; case .virginIslandsBritish: return "British Virgin Islands"; case .virginIslandsUS: return "U.S. Virgin Islands"; case .wallisandFutuna: return "Wallis and Futuna"; case .westernSahara: return "Western Sahara"; case .yemen: return "Yemen"; case .zambia: return "Zambia"; case .zimbabwe: return "Zimbabwe"
        }
    }
}
// swiftlint:enable line_length switch_case_alignment