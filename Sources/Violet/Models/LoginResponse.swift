//
// LoginResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Login Response */
public struct LoginResponse: Codable, JSONEncodable, Hashable {

    public enum CountryCode: String, Codable, CaseIterable {
        case us = "US"
        case au = "AU"
        case at = "AT"
        case be = "BE"
        case ca = "CA"
        case dk = "DK"
        case fi = "FI"
        case fr = "FR"
        case de = "DE"
        case hk = "HK"
        case ie = "IE"
        case it = "IT"
        case jp = "JP"
        case lu = "LU"
        case mx = "MX"
        case nl = "NL"
        case nz = "NZ"
        case no = "NO"
        case pt = "PT"
        case sg = "SG"
        case es = "ES"
        case se = "SE"
        case ch = "CH"
        case gb = "GB"
        case af = "AF"
        case ax = "AX"
        case al = "AL"
        case dz = "DZ"
        case _as = "AS"
        case ad = "AD"
        case ao = "AO"
        case ai = "AI"
        case aq = "AQ"
        case ag = "AG"
        case ar = "AR"
        case am = "AM"
        case aw = "AW"
        case az = "AZ"
        case bs = "BS"
        case bh = "BH"
        case bd = "BD"
        case bb = "BB"
        case by = "BY"
        case bz = "BZ"
        case bj = "BJ"
        case bm = "BM"
        case bt = "BT"
        case bo = "BO"
        case ba = "BA"
        case bw = "BW"
        case bv = "BV"
        case br = "BR"
        case io = "IO"
        case bn = "BN"
        case bg = "BG"
        case bf = "BF"
        case bi = "BI"
        case kh = "KH"
        case cm = "CM"
        case cv = "CV"
        case ky = "KY"
        case cf = "CF"
        case td = "TD"
        case cl = "CL"
        case cn = "CN"
        case cx = "CX"
        case cc = "CC"
        case co = "CO"
        case km = "KM"
        case cg = "CG"
        case cd = "CD"
        case ck = "CK"
        case cr = "CR"
        case ci = "CI"
        case hr = "HR"
        case cu = "CU"
        case cy = "CY"
        case cz = "CZ"
        case dj = "DJ"
        case dm = "DM"
        case _do = "DO"
        case ec = "EC"
        case eg = "EG"
        case sv = "SV"
        case gq = "GQ"
        case er = "ER"
        case ee = "EE"
        case et = "ET"
        case fk = "FK"
        case fo = "FO"
        case fj = "FJ"
        case gf = "GF"
        case pf = "PF"
        case tf = "TF"
        case ga = "GA"
        case gm = "GM"
        case ge = "GE"
        case gh = "GH"
        case gi = "GI"
        case gr = "GR"
        case gl = "GL"
        case gd = "GD"
        case gp = "GP"
        case gu = "GU"
        case gt = "GT"
        case gg = "GG"
        case gn = "GN"
        case gw = "GW"
        case gy = "GY"
        case ht = "HT"
        case hm = "HM"
        case va = "VA"
        case hn = "HN"
        case hu = "HU"
        case _is = "IS"
        case _in = "IN"
        case id = "ID"
        case ir = "IR"
        case iq = "IQ"
        case im = "IM"
        case il = "IL"
        case jm = "JM"
        case je = "JE"
        case jo = "JO"
        case kz = "KZ"
        case ke = "KE"
        case ki = "KI"
        case kp = "KP"
        case kr = "KR"
        case kw = "KW"
        case kg = "KG"
        case la = "LA"
        case lv = "LV"
        case lb = "LB"
        case ls = "LS"
        case lr = "LR"
        case ly = "LY"
        case li = "LI"
        case lt = "LT"
        case mo = "MO"
        case mk = "MK"
        case mg = "MG"
        case mw = "MW"
        case my = "MY"
        case mv = "MV"
        case ml = "ML"
        case mt = "MT"
        case mh = "MH"
        case mq = "MQ"
        case mr = "MR"
        case mu = "MU"
        case yt = "YT"
        case fm = "FM"
        case md = "MD"
        case mc = "MC"
        case mn = "MN"
        case me = "ME"
        case ms = "MS"
        case ma = "MA"
        case mz = "MZ"
        case mm = "MM"
        case na = "NA"
        case nr = "NR"
        case np = "NP"
        case an = "AN"
        case nc = "NC"
        case ni = "NI"
        case ne = "NE"
        case ng = "NG"
        case nu = "NU"
        case nf = "NF"
        case mp = "MP"
        case om = "OM"
        case pk = "PK"
        case pw = "PW"
        case ps = "PS"
        case pa = "PA"
        case pg = "PG"
        case py = "PY"
        case pe = "PE"
        case ph = "PH"
        case pn = "PN"
        case pl = "PL"
        case pr = "PR"
        case qa = "QA"
        case re = "RE"
        case ro = "RO"
        case ru = "RU"
        case rw = "RW"
        case sh = "SH"
        case kn = "KN"
        case lc = "LC"
        case pm = "PM"
        case vc = "VC"
        case ws = "WS"
        case sm = "SM"
        case st = "ST"
        case sa = "SA"
        case sn = "SN"
        case rs = "RS"
        case sc = "SC"
        case sl = "SL"
        case sk = "SK"
        case si = "SI"
        case sb = "SB"
        case so = "SO"
        case za = "ZA"
        case gs = "GS"
        case lk = "LK"
        case sd = "SD"
        case sr = "SR"
        case sj = "SJ"
        case sz = "SZ"
        case sy = "SY"
        case tw = "TW"
        case tj = "TJ"
        case tz = "TZ"
        case th = "TH"
        case tl = "TL"
        case tg = "TG"
        case tk = "TK"
        case to = "TO"
        case tt = "TT"
        case tn = "TN"
        case tr = "TR"
        case tm = "TM"
        case tc = "TC"
        case tv = "TV"
        case ug = "UG"
        case ua = "UA"
        case ae = "AE"
        case um = "UM"
        case uy = "UY"
        case uz = "UZ"
        case vu = "VU"
        case ve = "VE"
        case vn = "VN"
        case vg = "VG"
        case vi = "VI"
        case wf = "WF"
        case eh = "EH"
        case ye = "YE"
        case zm = "ZM"
        case zw = "ZW"
    }
    public enum Status: String, Codable, CaseIterable {
        case inactive = "INACTIVE"
        case active = "ACTIVE"
        case disabled = "DISABLED"
    }
    public enum ModelType: String, Codable, CaseIterable {
        case admin = "ADMIN"
        case merchant = "MERCHANT"
        case user = "USER"
        case developer = "DEVELOPER"
        case influencer = "INFLUENCER"
    }
    /** Country Code */
    public var countryCode: CountryCode?
    /** Date of creation */
    public var dateCreated: Date?
    /** Date of last update */
    public var dateLastModified: Date?
    /** The users unique email address */
    public var email: String
    /** The users first name */
    public var firstName: String
    public var id: Int64?
    /** The users last name */
    public var lastName: String
    /** Merchant ID */
    public var merchantId: Int?
    /** Merchant IDs */
    public var merchantIds: [Int]?
    /** The users raw desired password */
    public var password: String
    /** Is the Users Payment Settings Configured */
    public var paymentConfigured: Bool?
    /** Privacy Policy Accepted */
    public var privacyPolicyAccepted: Bool?
    /** Refresh Token */
    public var refreshToken: String?
    public var roles: Set<Role>?
    /** The status of the user */
    public var status: Status?
    /** Store Url */
    public var storeUrl: String?
    /** Token */
    public var token: String?
    /** Terms of Service Accepted */
    public var tosAccepted: Bool?
    /** The allowed values for the user type */
    public var type: ModelType
    /** If a user has verified their emailed address */
    public var verified: Bool?

    public init(countryCode: CountryCode? = nil, dateCreated: Date? = nil, dateLastModified: Date? = nil, email: String, firstName: String, id: Int64? = nil, lastName: String, merchantId: Int? = nil, merchantIds: [Int]? = nil, password: String, paymentConfigured: Bool? = nil, privacyPolicyAccepted: Bool? = nil, refreshToken: String? = nil, roles: Set<Role>? = nil, status: Status? = nil, storeUrl: String? = nil, token: String? = nil, tosAccepted: Bool? = nil, type: ModelType, verified: Bool? = nil) {
        self.countryCode = countryCode
        self.dateCreated = dateCreated
        self.dateLastModified = dateLastModified
        self.email = email
        self.firstName = firstName
        self.id = id
        self.lastName = lastName
        self.merchantId = merchantId
        self.merchantIds = merchantIds
        self.password = password
        self.paymentConfigured = paymentConfigured
        self.privacyPolicyAccepted = privacyPolicyAccepted
        self.refreshToken = refreshToken
        self.roles = roles
        self.status = status
        self.storeUrl = storeUrl
        self.token = token
        self.tosAccepted = tosAccepted
        self.type = type
        self.verified = verified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode = "country_code"
        case dateCreated = "date_created"
        case dateLastModified = "date_last_modified"
        case email
        case firstName = "first_name"
        case id
        case lastName = "last_name"
        case merchantId = "merchant_id"
        case merchantIds = "merchant_ids"
        case password
        case paymentConfigured = "payment_configured"
        case privacyPolicyAccepted = "privacy_policy_accepted"
        case refreshToken = "refresh_token"
        case roles
        case status
        case storeUrl = "store_url"
        case token
        case tosAccepted = "tos_accepted"
        case type
        case verified
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(countryCode, forKey: .countryCode)
        try container.encodeIfPresent(dateCreated, forKey: .dateCreated)
        try container.encodeIfPresent(dateLastModified, forKey: .dateLastModified)
        try container.encode(email, forKey: .email)
        try container.encode(firstName, forKey: .firstName)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(lastName, forKey: .lastName)
        try container.encodeIfPresent(merchantId, forKey: .merchantId)
        try container.encodeIfPresent(merchantIds, forKey: .merchantIds)
        try container.encode(password, forKey: .password)
        try container.encodeIfPresent(paymentConfigured, forKey: .paymentConfigured)
        try container.encodeIfPresent(privacyPolicyAccepted, forKey: .privacyPolicyAccepted)
        try container.encodeIfPresent(refreshToken, forKey: .refreshToken)
        try container.encodeIfPresent(roles, forKey: .roles)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(storeUrl, forKey: .storeUrl)
        try container.encodeIfPresent(token, forKey: .token)
        try container.encodeIfPresent(tosAccepted, forKey: .tosAccepted)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(verified, forKey: .verified)
    }
}
